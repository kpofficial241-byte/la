FROM eclipse-temurin:21-jre

WORKDIR /app

# Create plugins folder
RUN mkdir -p plugins

# Download Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Download YouTube source plugin
ADD https://github.com/lavalink-devs/youtube-source/releases/latest/download/youtube-plugin.jar plugins/youtube-plugin.jar

# Copy config
COPY application.yml application.yml

# Start Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
