#Get a base image with JDK installed
FROM openjdk:11

#Create a working directory to compaile,run java apps
WORKDIR /app

#Copy code from local machine to docker container
COPY Hello.java .

#Compile the code
RUN javac Hello.java

#run the java app
CMD ["java","Hello"]
