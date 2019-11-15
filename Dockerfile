FROM openjdk:11-jre
ARG JAR_FILE
ENV PROFILE=default
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java","-server","-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
