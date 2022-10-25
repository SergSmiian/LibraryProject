web: java -Dserver.port=$PORT -jar target/library-1.0-SNAPSHOT.jar --spring.datasource.url=${JDBC_DATABASE_URL}
release: ./mvnw flyway:migrate
