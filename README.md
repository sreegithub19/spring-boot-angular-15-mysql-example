# Spring Boot + Angular 15 + MySQL CRUD example

Full-stack Angular 15 + Spring Boot + MySQL CRUD Tutorial Application in that:
- Each Tutorial has id, title, description, published status.
- We can create, retrieve, update, delete Tutorials.
- We can also find Tutorials by title.

![spring-boot-angular-15-mysql-example-crud.png](spring-boot-angular-15-mysql-example-crud.png)

For more detail, please visit:
> [Spring Boot + Angular 15 + MySQL: CRUD example](https://www.bezkoder.com/spring-boot-angular-15-mysql/)

Run both Back-end & Front-end in one place:
> [Integrate Angular with Spring Boot Rest API](https://www.bezkoder.com/integrate-angular-spring-boot/)

More Practice:
> [Angular + Spring Boot: File upload example](https://www.bezkoder.com/angular-15-spring-boot-file-upload/)

> [Angular + Spring Boot: JWT Authentication and Authorization example](https://www.bezkoder.com/angular-15-spring-boot-jwt-auth/)

# Steps: 

1.
## Run Spring Boot application
```
sudo apt update && sudo apt install openjdk-21-jdk -y
 export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64 && export PATH=$JAVA_HOME/bin:$PATH
```


2.
## MySQL
```
chmod +x run_queries.sh && ./run_queries.sh


docker-compose up -d && docker ps
cd spring-boot-server && mvn spring-boot:run
```
The Spring Boot Server will export API at port `8081`.


3.
## Run Angular Client
```
cd angular-15-client && npm install && npm install -g @angular/cli && ng serve --port 8081
```

4.
## 
- change ports from private to public in PORTS tab



##### Angular: https://special-space-xylophone-w5975xvvxxvh9wr-4200.app.github.dev/tutorials

#### Java : https://github.dev/pf-signin?id=neat-dog-54w97wd&cluster=asse&name=special-space-xylophone-w5975xvvxxvh9wr&port=8080&pb=https%3A%2F%2Fspecial-space-xylophone-w5975xvvxxvh9wr-8080.app.github.dev%2Fauth%2Fpostback%2Ftunnel%3Frd%3D%252Fapi%252Ftutorials%26tunnel%3D1
