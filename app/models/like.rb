class Like < ApplicationRecord
    validates :user_id, uniqueness: { scope: :post_id, message: "only one like per post"}
    
    belongs_to :post
    belongs_to :user
end


# t.integer "user_id"
# t.integer "post_id"