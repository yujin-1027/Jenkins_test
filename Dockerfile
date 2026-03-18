# 1. 자바 21 환경 사용
FROM openjdk:21-jdk-slim

# 2. 빌드된 jar 파일을 컨테이너 안으로 복사
COPY build/libs/*.jar app.jar

# 3. 앱 실행
ENTRYPOINT ["java", "-jar", "/app.jar"]