# Use official Tomcat with Java 17
FROM tomcat:10.1-jdk17

# Remove default Tomcat apps (optional but recommended)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat
# Make sure your WAR file name and path are correct
COPY target/FLAMES.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]