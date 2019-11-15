FROM openjdk:11-jre
ARG JAR_FILE
ENV PROFILE default
ENV JAVA_OPTS -server
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java", "${JAVA_OPTS}", "-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
