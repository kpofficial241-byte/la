# Use the official Lavalink v4 image as base
FROM ghcr.io/lavalink-devs/lavalink:4

# Copy your local application.yml into the working directory inside the container
COPY application.yml /opt/Lavalink/application.yml

# Set the working directory
WORKDIR /opt/Lavalink

# Expose default Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
