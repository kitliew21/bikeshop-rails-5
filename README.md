# README

This ecommerce bike store was created for my web development course for CareerFoundry. The aim of this project was to familiarize myself with the Ruby on Rails Framework. I spent majority of my time understanding their MVC architecture and the different gems. It also gave me the opportunity to use Debian Linux.

Part 1 - Created a Rails web app and setup my development environment for Linux. During this process, i learnt how to use Git, Github and to deploy my web app on a production environment with Heroku.

Part 2 - Implemented the MVC paradigm in my Rails app. I setup a database migration and created product scaffolding. Next, i moved on to setting up associations between models. A basic layout and style was then applied to the web app to make it look more appealing to customers.

Part 3 - Made Sign up and Sign in features possible, users can now have separate roles (e.g. admins) and access. The web app can send automated emails on e.g. sign up. A rating system was also set in place where the average rating is calculated and displayed correctly. Users can rate products only when they are signed in. 

Part 4 - The web app now has automatic tests to detect errors early and can sell products or services through credit card payments either as a one-time payment or subscription. The finishing touch as to manually check the app for bugs and security issues. The app now makes server requests without reloading the page using AJAX. 

<br>

Command Line

cd: Change directory

ls: Show contents of current directory

<br>

Git, GitHub, and Heroku

git status: Find out the current status of your repository

git add .: Add all files in your project to the next commit

git commit -m "comment": Commit the changes (locally)

git push origin master: Push changes up to GitHub

git push heroku master: Push changes up to Heroku

<br>

Rails

rails new [AppName]: Generate a new Rails app (replace [AppName] with a name of your choice)

rails new [AppName] -T: Generate a new Rails app without the default test suite

rails server or short rails s: Start a server for your app and access it at http://localhost:3000 (Stop the server with Ctrl + C)

rails generate [...] or short rails g [...]: Generate files inside your application folder

rails g controller [ControllerName] [ActionName]: Generate a controller and view files with the name of [ControllerName] and add any controller action to it by replacing [ActionName] with the action names of your choice

rails g scaffold [ModelName] [ColumnName]:[ColumnType]: Generate views and controller according to the [ModelName]. Generate also a model and database migration with as many columns you like. Just specify a [ColumnName] and a [ColumnType]

rails g migration [MigrationName] [AddColumnName]:[AddColumnType]: Generate a migration file to make changes to your database structure. Adding column name and column type is optional

rails db:migrate: Migrate all un-migrated migration files to your local database

rails db:rollback: Undo the most recent migration

rails db:migrate:down version=[VersionNumber]: Migrate down back to a specific version. You can find the [VersionNumber] in the beginning of your migration file title

rails db:seed: Pre-populate the database with content specified with Ruby code inside the db/seeds.rb file or inside the db/seeds/ folder

rails console or short rails c: Access the command line interface of your app

<br>

Heroku

heroku create: Create a new app on Heroku and link it to your local repository

heroku run [...]: Run any command on Heroku

heroku run rails db:migrate: Run a migration on Heroku

heroku run rails db:seed: Pre-populate the database on Heroku with content from your seeds files

<br>

Overview

app_name/ (root): This is the main folder of your app which contains all the other folders and files belonging to your app. The most important file in here is the gemfile. In this file, you list all the gems you are using in your app. You can use the README.md file to provide some information or documentation about your app to users.

/app: This folder contains most of your app's code. This is the heart of your app. All your views, assets, models, and controllers are in here.

/app/assets: All JavaScript and CSS as well as the image files of your app that are used by your app's views.

/app/channels: In Rails 5, ActionCable became a major part of Rails. ActionCable integrates WebSockets into Rails and allows you to both keep an open connection to your users and send them real-time updates from your app. This functionality can be used to build chat apps, for example. The channels folder of your app contains all the code related to these open WebSocket connections.

/app/controllers: The controllers are the interface of your app. Everything goes through them. When a user makes a request, the controller gets information from the views and the models and sends that information back to the user.

/app/helpers: You dealt with Rails helper already. In this folder, you can write your own helper methods. Whenever you find yourself needing to write some Ruby code in the views, it's oftentimes a better idea to write a helper method in the corresponding helper file and call that helper in the views. It's important to keep in mind that a method you write inside a helper file will only be available inside the views of that same helper. Only helper methods inside the application_helper.rb are available in the views of the whole app. Also, keep in mind that your custom helper methods are only available in the views and not in the controller or model files.

/app/jobs: As of Rails 5, this folder is included in each Rails app by default. Here your jobs are handled by ActiveJob and can be used to perform tasks in the background while the user continues doing something else. This is particularly useful, for example, for scheduling emails that are sent out to users. You can, for example, define them to be delivered immediately, in an hour, in a week, or at any other time.

/app/mailers: You can send emails right from your Rails app. You will soon learn how to do that. For now, just know that you will put the code for sending emails here.

/app/models: Models communicate with the database and provide a bunch of helpers to interact with it. Because of the models, you don't have to deal with the database directly. Instead, you can treat the data like arrays and objects.

/app/views: The files in here are the ones your app users are actually going to see. These are your HTML files that render the actual pages of your app.

app/views/layouts: The layouts for all your HTML files are in here. The layouts contain the parts of the code that should be rendered on multiple pages. For example, headers, navigation bars, or footers.

/bin: You will most likely never have to touch this folder. This contains some general code to make sure you can run all the commands such as rails ..., rake ... and so on.

/config: In this folder you find some basic configuration (e.g. for the database) of your app, variables, and bits of code that should be initialized when the app starts running and as one of the most important files: the routes.rb file. You are going to learn about routes in the next Exercise.

/config/environments: Specify configuration code that only applies to a specific environment.

/config/initializers: This code is only run once in the beginning when the rails server is started. If you change something in here, you need to restart your server.

/config/locales: Rails comes with multi-language support out of the box. If you'd like your app to be in multiple different languages, you can set up language files in here to organize the different translations. Learn more about Rails Internationalization with I18n in the Rails Guides.

/db: Your database-related files are in here. All the migrations that let you see all the changes about the database and the schema.rb file, that represents the current structure of your database tables. You can also create seeds in here to "seed" the database with several entries at once. If you are using SQLite (which is in development), this folder also contains a file with all your SQLite database content.

/lib: Here, you can put any sort of libraries you are using. Also in here is the /lib/tasks folder. In that folder, you can create Rails tasks. Rails tasks are code bits that can be executed manually in the console with rails .... This is particularly useful if you write a script to run only once. For example, you could use this if you wanted to manipulate a chunk of database entries, but only do it once.

/log: Your server logs. This way, you can keep track of what happened at what point in time.

/public: Public files of all kinds. You can have downloadable content in here as well as static HTML pages. By default, this folder contains all the error pages that are shown to the user when something doesn't work. For example, the "404.html" error page. This folder also contains the robots.txt file which is interesting for SEO.

/test: The app you generated in this course actually does not contain this folder. But in a default Rails application, you usually have a folder with tests to make sure your app code is working properly. Later during this course, you are going to generate a /spec folder which serves the same function, but uses a different gem than the Rails default.

/tmp: Temporarily generated files, for example, for caching. You'll learn about caching later in the course.

/vendor: In the context of this course, we will not really work with this folder. Essentially, you can use it to add any third-party resources and code to your app. It's good practice to keep code that's not maintained by yourself, not in the /app folder, but instead in the vendor folder.
