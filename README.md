# [Project: Building Facebook](https://www.theodinproject.com/courses/ruby-on-rails/lessons/final-project#null)


1. Use PostgreSQL for your database from the beginning (not SQLite3), that way your deployment to Heroku will go much more smoothly. See the Heroku Docs for setup info. [COMPLETE]

2. Users must sign in to see anything except the sign in page. [COMPLETE]

3. User sign-in should use the Devise gem. Devise gives you all sorts of helpful methods so you no longer have to write your own user passwords, sessions, and #current_user methods. See the [Railscast](http://railscasts.com/episodes/209-introducing-devise?view=asciicast) (which uses Rails 3) for a step-by-step introduction. The docs will be fully current. [COMPLETE]

4. Users can send Friend Requests to other Users. [COMPLETE]

5. A User must accept the Friend Request to become friends. [COMPLETE]

6. The Friend Request shows up in the notifications section of a User’s navbar. [NOT ATTEMPTED]

7. Users can create Posts (text only to start). [COMPLETE]

8. Users can Like Posts. [COMPLETE]

9. Users can Comment on Posts. [COMPLETE]

10. Posts should always display with the post content, author, comments and likes. [COMPLETE]

11. Treat the Posts Index page like the real Facebook’s “Timeline” feature – show all the recent posts from the current user and users she is friends with. [COMPLETE]

12. Users can create a Profile with a Photo. [COMPLETE]

    * [Active Storage](https://guides.rubyonrails.org/active_storage_overview.html) Configuration

        * Run `rails active_storage:install` to generate a migration that creates `active_storage_blobs` & `active_storage_attachments` tables.

        * Use `rails db:migrate` to run the migration.
    
    * [How to Build an Image Upload Feature with Rails and Active Storage](https://www.microverse.org/blog/how-to-build-an-image-upload-feature-with-rails-and-active-storage)

13. The User Show page contains their Profile information, photo, and Posts. [COMPLETE]

14. The Users Index page lists all users and buttons for sending Friend Requests to those who are not already friends or who don’t already have a pending request. [COMPLETE]

15. Sign in should use OmniAuth to allow a user to sign in with their real Facebook account. See the RailsCast on FB authentication with Devise for a step-by-step look at how it works. [PARTIALLY COMPLETED]
    * This is partially completed because Facebook is not providing email details for API access. I think this is temporary, and I will check back in a month or two to see if anything has changed.
    * Implement [figaro](https://github.com/laserlemon/figaro) gem for Environment Variable management.
    * Implement [OmniAuth w/ Devise](https://github.com/heartcombo/devise/wiki/OmniAuth:-Overview) for Facebook
        * !NOTE! [Latest omniauth-facebook gem breaks devise](https://stackoverflow.com/questions/65702896/latest-omniauth-facebook-gem-breaks-devise)
    * Quick way to build app and test omniauth w/ devise.
        * [How to Integrate ‘devise’ and ‘omniauth-facebook’ Authentication To Your Rails App](https://hackernoon.com/how-to-integrate-devise-and-omniauth-facebook-authentication-to-your-rails-app-tyiv3xpi)

16. Set up a [mailer](https://guides.rubyonrails.org/action_mailer_basics.html) to send a welcome email when a new user signs up. Use the [letter_opener](https://github.com/ryanb/letter_opener) gem to test it in development mode. [COMPLETE]
    * [Authentication and Sending Confirmation Email Using Devise 2020](https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Devise_Authentication_Sending_Confirmation_Email.php)
    * [Devise: Unpermitted parameters](https://stackoverflow.com/questions/35668465/devise-unpermitted-parameters)


17. Deploy your App to Heroku. [COMPLETE]

18. Set up the SendGrid add-on and start sending real emails. It’s free for low usage tiers. [COMPLETE]
    * [Using Devise with Gmail, SendGrid, Rails and Heroku: Tips to save time debugging](https://medium.com/@cheney.shreve/using-devise-with-gmail-sendgrid-rails-and-heroku-tips-to-save-time-debugging-626546118358)
        * I am not exactly sure what settings here worked, but something did the trick! :P
        * Ensure to use an API key for SendGrid and that the [credential configuration is properly setup](https://stackoverflow.com/questions/59514512/rails-5-2-netsmtpauthenticationerror-535-authentication-failed-account-disa).
        * [Implement Twilio SendGrid via Heroku](https://devcenter.heroku.com/articles/sendgrid#ruby)


        
## Extra Credit

* Adding Basic Search [COMPLETE]
    * [Adding a Basic Search Form in Rails](https://dev.to/mwong068/adding-a-basic-search-form-in-rails-5hnl)

* Use [Active Storage](https://edgeguides.rubyonrails.org/active_storage_overview.html) to allow users to upload a photo to their profile. [COMPLETE]

* Ruby version: ruby 3.0.0rc1 (2020-12-20 master 8680ae9cbd) [x86_64-darwin19]

* Rails version: Rails 6.1.0

* How to run the test suite
