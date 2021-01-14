require "rails_helper"

RSpec.describe Request, :type => :model do
    describe "#new_request" do
      it "creates a new request" do 
        user1 = User.create!(email:'1@gmail.com', password:'testing')
        user2 = User.create!(email:'2@gmail.com', password:'testing')
        request = user1.requests.create(:friend_id => user2.id)
        expect(Request.first).to eql(request)
      end
    end
end