FROM openjdk
MAINTAINER Akeeb K Y <aaqib.yaragatti@gmail.com>
ADD target/*.jar mscs-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/mscs-0.0.1-SNAPSHOT.jar"]
EXPOSE 8092
