class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :confirmable, :recoverable, :rememberable,
         :validatable, :omniauthable, omniauth_providers: %i[facebook]

  validates :first_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 20 }

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id'
  has_many :inverse_friends, through: :inverse_friendships, source: :user

  has_many :requests
  has_many :inverse_requests, class_name: 'Request', foreign_key: 'friend_id'

  has_many :posts
  has_many :likes
  has_many :comments
  has_one_attached :avatar

  def self.search(search)
    if search
      name = User.find_by(first_name: search)
      if name
        where(first_name: name.first_name)
      else
        User.all
      end
    else
      User.all
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      # at time of development the 'auth.info.email' function doesn't work since facebook is not providing
      # email address detail in their call. I have manually inserted my personal email address for testing purposes.
      # I will revisit this method in a month or two to see if I can validate myself with facebook
      # and have them provide the email address to my calls.
      # user.email = auth.info.email
      user.email = 'rsuazo2@gmail.com'
      user.password = Devise.friendly_token[0, 20]
      parse_name(user, auth.info.name) # assuming the user model has a name
      # user.avatar = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
        user.email = data['email'] if user.email.blank?
      end
    end
  end

  private

  def self.parse_name(user, name)
    name_arr = name.split(' ')
    user.last_name = name_arr.pop
    user.first_name = name_arr.join(' ')
  end
end
