require "rails_helper"

RSpec.describe User, :type => :model do
    describe "#new" do

      let(:friend) {
        User.new(:email => "jane@doe.com", :password => "pw1234")
      }

      subject {
        described_class.new(email: "test@gmail.com",
                            password: "Anything",)
      }

      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end

      it "is not valid without an email" do
        subject.email = nil
        expect(subject).to_not be_valid
      end

      it "is not valid without a password" do
        subject.password = nil
        expect(subject).to_not be_valid
      end

    end

    describe "Associations" do
      it { should have_many(:friends) }
      it { should have_many(:friendships) }
      it { should have_many(:inverse_friends) }
      it { should have_many(:inverse_friendships) }
      it { should have_many(:requests) }
      it { should have_many(:inverse_requests) }
    end
  
    # describe "Validations" do
    #   it { should validate_presence_of(:bidder) }
    # end

end