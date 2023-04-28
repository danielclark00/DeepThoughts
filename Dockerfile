# This is a template - NEEDS UPDATING!!!

FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy buildSrc directory into the Docker container.
COPY buildSrc ./buildSrc

# Copy source code and Gradle files for each module into the Docker container.
COPY module1/src ./src/module1
COPY module1/build.gradle.kts ./module1/build.gradle.kts
COPY module1/settings.gradle.kts ./module1/settings.gradle.kts

COPY module2/src ./src/module2
COPY module2/build.gradle.kts ./module2/build.gradle.kts
COPY module2/settings.gradle.kts ./module2/settings.gradle.kts

# Build and push the Docker image.
docker build -t my-gradle-project .
docker push my-gradle-project
