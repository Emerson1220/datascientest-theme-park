FROM openjdk:12-alpine
VOLUME /tmp
ADD /build/libs/*.jar theme-park-ride-gradle.jar
EXPOSE 8080
ENTRYPOINT exec java -jar theme-park-ride-gradle.jar
HEALTHCHECK --interval=5m --timeout=3s --retries=3 \
CMD curl -f http://localhost:5000/ || exit 1