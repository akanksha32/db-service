FROM elementalconcept/java8-mysql

RUN apt-get update
RUN apt-get install -y maven
#RUN /bin/sh sudo ufw allow mysql
#RUN systemctl start mysql
#RUN systemctl enable mysql
#RUN /usr/bin/mysql -u root -p
#RUN create database test
#RUN exit
COPY . /usr/local/
WORKDIR /usr/local/

RUN mvn package
#CMD ["java","-cp","target/db-service-1.0-SNAPSHOT.jar","DbServiceApplication"] 

