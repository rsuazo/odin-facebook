
require 'rails_helper'

RSpec.describe 'Users', type: :request do

    context 'when logged in' do

        before(:each) do
            user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
            login_as(user, :scope => :user)
        end

        it "renders the user's show page" do
            get authenticated_root_path
            expect(response).to render_template(:show)
        end

        it "renders the user index page" do
            get users_path
            expect(response).to render_template(:index)
        end


        it "creates a Widget and redirects to the Widget's page" do
            get "/users/current"
            expect(response).to render_template(:show)
        
            # post "/users", :params => { :user => {:name => "My Widget"} }
        
            # expect(response).to redirect_to(assigns(:user))
            # follow_redirect!
        
            # expect(response).to render_template(:show)
            # expect(response.body).to include("Widget was successfully created.")
        end
    end

    context 'when logged out' do 
        it 'renders the sign-in page' do
            get unauthenticated_root_path
            expect(response).to render_template(:new)
        end
    end
  end