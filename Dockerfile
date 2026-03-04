FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY src/PrimeChecker.java .

RUN javac -d . PrimeChecker.java

CMD ["java","primechecker.PrimeChecker"]

