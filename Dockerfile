# Step 1 : use an official Java runtime as the base image
FROM openjdk:21

# Step 2 : Set the working directory inside the contAainer
WORKDIR /app

LABEL maintainer = "javaguides.net"

# Step 3 : Copy the JAR file fro the target folder to the working directory
ADD target/Spring-Html-0.0.1-SNAPSHOT.jar Spring-Html.jar
 
# Step 4 : Expose the port your application will run on
EXPOSE 8080

# Step 5: Speciry the command to run the application
ENTRYPOINT ["java", "-jar", "Spring-Html.jar"]


