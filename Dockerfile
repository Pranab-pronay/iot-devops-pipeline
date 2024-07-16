FROM openjdk:11

EXPOSE 8041
ADD target/gateway-device-app-0.0.1-jar-with-dependencies.jar gateway-device-app-0.0.1-jar-with-dependencies.jar

# Set the working directory
WORKDIR /app

# Add the entire config folder to the containergit
ADD config /app/config

ENTRYPOINT ["java", "-jar", "/gateway-device-app-0.0.1-jar-with-dependencies.jar"]
