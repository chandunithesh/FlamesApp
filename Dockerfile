FROM tomcat:10.1-jdk17

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file (must exist in repo root)
COPY FLAMES.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start server
CMD ["catalina.sh", "run"]
