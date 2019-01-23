### Ruby On Rails (Web Application Framework)
    - Full stack solution: All encompasing solution having frontend, backend with database, Web Server etc
    - Check: https://rubyonrails.org
    - By DHH: David Heinemeier Hansson
    - Twitter is on Ruby/Rails
    - Rails follows MVC design patterns of Web Application
        - Clean separation of concers: Model, View & Controller
        - CLIENT/BROWSER: Sends the request to Router
        - ROUTER: HTTP request(GET/POST/PUT etc) is received by Router of rails application.
                Router directs the request to appropriate controller based on type of request
            - $RAILS_APP/config/routes.rb
        - CONTROLLER: Controller either redirects to View or reaches to Model to connect to DB
            - $RAILS_APP/app/controllers
        - VIEW: Renders a page
            - $RAILS_APP/app/views
        - MODEL: Connects to DB, completes DB operation and sends the data to Controller. 
            Then controller either renders a View or sends response back to Client
            - $RAILS_APP/app/models
    - Exploring rails application
        - $RAILS_APP/app/assets: It has images, javascripts, stylesheets etc. All static assets. 
        - $RAILS_APP/app/helpers: Extract out common logic
        - $RAILS_APP/app/mailers: Mailing options
        - $RAILS_APP/app/models: All the models
        - $RAILS_APP/app/views: All the pages that will be rendered to user
            layouts/application.erb: Default application layout
        - $RAILS_APP/bin: All executables here. We make no changes here so dont care.
        - $RAILS_APP/config: 
            - database.yml: DB configuration
            - routes.rb: All routes will be here
            - environments/ - Settings for development, test & production environments
        - $RAILS_APP/db: All migration files will be here. Files that application uses to create DB tables.
        - $RAILS_APP/lib: Do not use assets/ here. Instead use $RAILS_APP/app/assets
        - $RAILS_APP/logs: All the logs from server will be stored here.
        - $RAILS_APP/public: Server error rendering HTMLs like 404, 500 etc
        - $RAILS_APP/test: Place for automated testcases
        - $RAILS_APP/tmp: Dont have to worry about
        - $RAILS_APP/vendor: Dont have to worry about
        - $RAILS_APP/Gemfile: List of default gems that your application comes with
        - $RAILS_APP/Gemfile.lock: All dependencies and versions are stored. No direct updates to this file.
        - $RAILS_APP/rakefile: Dont have to worry about
        - $RAILS_APP/README.md: Put relevant information for git
### Ruby On Rails: Development
    - To start rails app: 
        - rails s -b 0.0.0.0 or 
        - rails server -b 0.0.0.0
        - rails server (If local)
        - Check : http://localhost:3000
        - Ctrl-C to stop the server
    - To check all the routes available in application
        - rake routes
    - To develop a web application(Minimum: Route+Controller+View)
        - Welcome controller & home action
        - Goto $RAILS_APP/config/routes.rb and define controller & action
            - get 'welcome/home', to: 'welcome#home'
        - Create controller $RAILS_APP/app/controllers: New Class
            - class WelcomeController < ApplicationController
        - Create action in the controller : Method in Controller
            - def home ... end
        - Create template for home in $RAILS_APP/app/views
            - Create new folder: welcome
        - Create html for home action
            - Create RAILS_APP/app/views/welcome folder (For each controller, one folder)
            - Create $RAILS_APP/app/views/welcome/home.html.erb (For each action, one HTML)       
        - Rails Naving Convention of files and folders
            - WelcomeController class
            - home method
            - $RAILS_APP/app/views/welcome folder
            - $RAILS_APP/app/views/welcome/home.html.erb file (becuase action is home)
### Production deployment : Heroku
    - Install without production: bundle install --without production
    - Install Heroku using brew: 
        - brew install heroku/brew/heroku
        - Check: heroku -v
    - Login to Heroku: 
        - heroku login -i (For entering email/pwd on terminal) 
        - heroku login (To enter email/pwd in browser)  
    - Create an application in Heroku for Local application (Production version)
        - Goto prject directory and run: 
            - heroku create       
        - Creates the application and gives random name to it
            - eg: https://polar-tundra-21539.herokuapp.com/ | https://git.heroku.com/polar-tundra-21539.git 
            - We will push our application to heroku
        - Make sure you push the changes to git before pushing app to heroku
        - Add SSH Key of local environment to Heroku so that we dont have to enter id/pwd for each git push
            - heroku keys:add
            - ssh-add -l
            - To add RSA key: ssh-add id_rsa
        - Pushing application to production in heroku
            - git push heroku master
        - Rename App
            - heroku rename rails-sujit
            
        
        
        
        
    
