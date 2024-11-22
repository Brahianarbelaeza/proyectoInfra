FROM openjdk:17-slim

# Copiar el archivo JAR del proyecto
COPY build/libs/Todo-spring-0.0.1-SNAPSHOT.jar /app/todo-spring.jar

# Exponer el puerto
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/todo-spring.jar"]