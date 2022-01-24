how to run:

	1) start docker if it is not already running on the host computer
	2) clone repository: docker-dropInRegistration to your local hard drive
	3) move to install location in file system
			cd ~/docker/dropInRegistration
	4) run docker command to run the app
			docker-compose up -d
	5) confirm the app is running in its docker container
			docker ps
	
	once running you may log into the app from a browser at the following url
		http://localhost:8081/dropInRegistration/
		
	the default password for administrator functions:
		user name: admin
		password: admin
	
	login for individual players is 
		user: email
		password: email
		
	to install a new version of the app
	1) export a new war file from the associated eclipse project: DropInRegistration
	2) copy the new war file into the dropInRegistration file folder overwriting the existing file
	3) stop the running application from the folder location
			docker-compose down
	4) rebuild the docker image
			docker-compose build --no-cache tomcat
			(this will rebuild the image from scratch copying in the new war file)
	5) launch the app as a daemon
			docker-compose up -d
	
	
	