FROM openjdk:11-jre
ARG JAR_FILE
ENV APP1 -server
ENV PROFILE default
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai","$APP1", "-jar", "/usr/share/leve/assistant.jar"]
