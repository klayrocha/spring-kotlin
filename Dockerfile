##  docker build -t forum -f Dockerfile .
## docker images
## docker run -p 7080:8080 forum
## docker network create employee-mysql
## docker container run --name mysqldb --network employee-mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=bootdb -d mysql:8
## sudo docker run --name mysql -e MYSQL_ROOT_PASSWORD=Dsskl101@ -d --restart unless-stopped -p 3306:3306  --detach mysql:5.7
FROM adoptopenjdk/openjdk11
EXPOSE 8080
ADD /build/libs/forum-0.0.1-SNAPSHOT.jar forum.jar
##ENTRYPOINT ["java", "-jar","forum.jar"]
##ENTRYPOINT ["java", "$JAVA_OPTS -XX:+UseContainerSupport", "-Xmx300m -Xss512k -XX:CICompilerCount=2", "-Dserver.port=$PORT", "-Dspring.profiles.active=prod", "-jar", "forum.jar"]
ENTRYPOINT ["java","-Dspring.profiles.active=prod", "-jar", "forum.jar"]