FROM openjdk:11-jre
ARG JAR_FILE
ENV PROFILE test
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
