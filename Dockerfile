FROM amazoncorretto:11-alpine-jdk

WORKDIR /app
COPY ./build/libs/*.jar app.jar
COPY ./cmdline-jmxclient-0.10.3.jar jmx-client.jar

ENTRYPOINT [ \
    "java", \
    "-Duser.timezone=Asia/Tokyo", \
    "-XX:MaxRAMPercentage=50", \
    "-Dcom.sun.management.jmxremote=TRUE", \
    "-Dcom.sun.management.jmxremote.port=9010", \
    "-Dcom.sun.management.jmxremote.rmi.port=9010", \
    "-Djava.rmi.server.hostname=web", \
    "-Dcom.sun.management.jmxremote.ssl=false", \
    "-Dcom.sun.management.jmxremote.authenticate=false", \
    "-jar", \
    "app.jar" \
]
