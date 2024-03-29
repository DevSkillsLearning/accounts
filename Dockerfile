#Start with the base image containing java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER devskilslearning

#Add the application's jar to the image
COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar

#Execute the application
ENTRYPOINT ["java", "-jar", "accounts-0.0.1-SNAPSHOT.jar"]

