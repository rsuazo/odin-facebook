# [Project: Building Facebook](https://www.theodinproject.com/courses/ruby-on-rails/lessons/final-project#null)


1. Use PostgreSQL for your database from the beginning (not SQLite3), that way your deployment to Heroku will go much more smoothly. See the Heroku Docs for setup info. [COMPLETE]

2. Users must sign in to see anything except the sign in page. [COMPLETE]

3. User sign-in should use the Devise gem. Devise gives you all sorts of helpful methods so you no longer have to write your own user passwords, sessions, and #current_user methods. See the Railscast (which uses Rails 3) for a step-by-step introduction. The docs will be fully current. [COMPLETE]

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

13. The User Show page contains their Profile information, photo, and Posts. [COMPLETE]

14. The Users Index page lists all users and buttons for sending Friend Requests to those who are not already friends or who don’t already have a pending request. [COMPLETE]

15. Sign in should use OmniAuth to allow a user to sign in with their real Facebook account. See the RailsCast on FB authentication with Devise for a step-by-step look at how it works.

16. Set up a mailer to send a welcome email when a new user signs up. Use the letter_opener gem (see docs here) to test it in development mode.

17. Deploy your App to Heroku.

18. Set up the SendGrid add-on and start sending real emails. It’s free for low usage tiers.



* Use `rails db:migrate` to run the migration.

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
