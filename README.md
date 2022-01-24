# docker-dropInRegistration

what is docker-dropInRegistration

  docker-dropInRegistration is the dockerized version of the web application: dropInRegistration
  the source code for the app is publically available here: https://github.com/snorrena/dropInRegistration
  the app is packaged in a war file and copied into a docker image running a tomcat server
  the docker-compose file lists a single tomcat service that will expose the app on port 8081 on the host computer when run in docker
  
  What does the app do?
  
  docker-dropInRegistration is a web application for managing a small group of hockey players who play drop hockey every Friday evening at Britannia Rink
  
  the app includes functions for an administrator to email a group of players advising them to login and register to play in the next game. Each player must then login to claim
  their spot in the roster for the weekly game.
  
  the app will allow registration of two goaltenders and twenty skaters per game. Once twently skaters are registered, four more may be added to a wait list. If a registered player
  logs into the application and cancels their registration, the first player on the wait list is moved into the roster and notified by email of the status change.
  
  Once all available spots are filled including four on the waitlist, new logins will see an error message advising that all spots are full and to try again next week.
  
  Requirements to install and run this application
  
    docker must be installed and running on the host machine
    this repository should be cloned on the host machine
    cd into the application directory and run 'docker-compose up -d' to run the application as a daemon
    open the application on the host machine in a web browser at 'http://localhost:8081/dropInRegistration'
    
    login as admin
      user name: admin
      password: admin
      
    login as a player
      user name: snorrena@gmail.com
      password: snorrena@gmail.com
      
     ***note the included version of this application re-directs all email to snorrena@gmail.com for testing purposes. If the application will be run in docker for production, then
     the admin email and password should be updated and a new war file generated for use in this dockerized version of the application
      
     Admin functions
     
     reset registrations:
        this will clear all player registration in the database (you probably don't want to do this when testing)
        
     email - new session:
        this will generate a boiler plate email invite to the next game for all players listed in the database
        
     email - roster status:
        this generates an email to all users advise of the current registrations for the next game
        
     maintenance:
        the maintenance buttons opens a page for the administrator to manually adjust the status of all players. It also includes functions for adding or 
        deleting a player from the database 
        
       Player functions
       
       On login, a new player will see a button to join the upcoming game if space is available or an error message if the roster is full. If the player is already registered, they will
       see a button that will allow for cancellation. If a registered player cancels, the first persion on the wait list is moved into the roster and notified by email of their
       status change.
       
       visit the application repository for details on the application build
        https://github.com/snorrena/dropInRegistration
     
      
  
