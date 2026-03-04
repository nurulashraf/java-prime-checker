FROM eclipse-temurin:21-jdk-jammy AS build
WORKDIR /app
COPY src/PrimeChecker.java .
RUN javac -d . PrimeChecker.java

FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
COPY --from=build /app/primechecker/ primechecker/
CMD ["java", "primechecker.PrimeChecker"]
