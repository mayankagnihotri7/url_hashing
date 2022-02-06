# How to use this application?

Make sure to have ruby and rails installed in your system. If not follow the
tutorial on
[DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04)
for installing it on Ubuntu 20.04.

Versions being used -

- Ruby: 3.0.2
- Rails: 6.1.4.4

- Clone the repository.
- Navigate to the folder of the application.
- Run `bundle install` to install all the gems/dependencies used in this
  application.
- If the above fails due to the missing `database.yml` file feel free to contact
  me for the same as that file has not been committed or you can create a
  separate rails project by running the command `rails new <project_name>` and
  you can copy over the `database.yml` file from that project into the `config`
  folder inside the cloned application.
  - Create new database using - `bundle exec rails db:create` command.
  - Setup the database table using `rake db:migrate` or `rails db:migrate`.
  - Run the application using `rails server` or in short `rails s`.
  - Open browser of your choice and enter `localhost:3000`.
  - Enter any URL to be hashed/shortened in the input field.
  - Below you will see the shortened url along with the original URL, you can
    copy and paste the shortened it incognito window or use it anyhow you wish
    to use it. But after a single usage i.e; visiting the hashed URL it will be
    destroyed which can be tested by entering the same hashed URL which will
    show the error printed on the screen in JSON format.
- To run the test enter `rspec` command in the console which will automatically
  run all the written tests for you.
