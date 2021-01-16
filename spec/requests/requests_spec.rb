# When writing request specs, try to answer the question, 
# “For a given HTTP request (verb + path + parameters), 
# what HTTP response should the application return?”
        
        
RSpec.describe RequestsController do
    describe "creates a new request" do 
      before(:each) do
            user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
            login_as(user, :scope => :user)
        end


      it "creates a Friend Request and redirects to Users#Index page" do
        friend = User.create!(:email => 'friend@example.com', :password => 'f4k3p455w0rd')
        get users_path
        expect(response).to render_template(:index)
        # <%= link_to "Add Friend", requests_path(:friend_id => user), :method => :post %>
        post requests_path, :params => { :friend_id => friend.id}

        follow_redirect!

        expect(response).to render_template(:index)
    
        # post "/users", :params => { :user => {:name => "My Widget"} }
        # expect(response).to redirect_to(assigns(:user))
        # follow_redirect!
      end
    end
  end



