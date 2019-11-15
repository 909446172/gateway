FROM openjdk:11-jre
ARG JAR_FILE
ENV PROFILE=default  JAVA_OPT=-server
ADD target/${JAR_FILE} /usr/share/leve/assistant.jar
ENTRYPOINT ["java", "${JAVA_OPT}", "-Dspring.profiles.active=${PROFILE}", "-Duser.timezone=Asia/Shanghai", "-jar", "/usr/share/leve/assistant.jar"]
