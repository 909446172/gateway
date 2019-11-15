FROM openjdk:11-jre
ARG JAR_FILE
ENV APP server
ENV PROFILE default

ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java","-$APP","-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
