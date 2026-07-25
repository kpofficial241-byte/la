FROM ghcr.io/lavalink-devs/lavalink:4

WORKDIR /opt/Lavalink

COPY application.yml application.yml

CMD ["java", "-jar", "Lavalink.jar"]
