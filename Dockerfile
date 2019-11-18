FROM openjdk:11-jre
ARG JAR_FILE
ENV PROFILE -server
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java","${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
