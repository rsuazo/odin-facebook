class User < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 2, maximum: 20}
  validates :last_name, presence: true, length: { minimum: 2, maximum: 20}
  
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_many :requests
  has_many :inverse_requests, :class_name => "Request", :foreign_key => "friend_id"
  
  has_many :posts
  has_many :likes
  has_many :comments
  has_one_attached :avatar
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.search(search)
    if search
      name = User.find_by(first_name: search)
      if name
        self.where(first_name: name.first_name)
      else
        User.all
      end
    else
      User.all
    end
  end
end
