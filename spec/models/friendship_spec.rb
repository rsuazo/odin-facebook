require "rails_helper"

RSpec.describe Friendship, :type => :model do
    describe "#new_friendship" do
      it "creates a new friendship" do 
        user1 = User.create!(email:'1@gmail.com', password:'testing')
        user2 = User.create!(email:'2@gmail.com', password:'testing')
        friendship = user1.friendships.create(:friend_id => user2.id)
        expect(user1.friendships.first).to eql(friendship)
      end
    end
end