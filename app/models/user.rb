class User < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 3, maximum: 20}
  validates :last_name, presence: true
  
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
end
