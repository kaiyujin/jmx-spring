# Usage

### local
```
docker-compose up -d --build
docker ps | grep jmx-spring_side
docker exec -it $CONTAINER_ID sh
```
### side container
example
```
/side # java -jar jmx-client.jar - web:9010 java.lang:type=Memory HeapMemoryUsage
```
