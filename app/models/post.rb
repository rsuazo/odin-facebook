class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments

    validates :body, presence: true, length: { minimum: 3, maximum: 100}
    validates :title, presence: true, length: { minimum: 3, maximum: 500}
end
