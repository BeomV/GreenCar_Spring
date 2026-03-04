# GreenCar_Spring

Spring Framework 기반의 그린카 O2O(Online to Offline) 서비스 웹 애플리케이션입니다.
졸업전시회 프로젝트로 기획, 디자인, 개발 전반에 참여하였습니다.

## 프로젝트 개요

| 항목 | 내용 |
|------|------|
| **기간** | 2022.09 |
| **유형** | 졸업전시회 프로젝트 |
| **역할** | 기획, 디자인, 개발 |

## 기술 스택

| 구분 | 기술 | 버전 |
|------|------|------|
| **Language** | Java | 1.8 |
| **Framework** | Spring MVC | 5.2.3 |
| **ORM** | MyBatis | 3.5.4 |
| **Database** | MySQL | 8.0 |
| **View** | JSP + JSTL | - |
| **Build** | Maven | - |
| **기타** | Lombok, Oracle JDBC | - |

## 주요 기능

- 그린카 차량 예약 서비스
- 차량 조회 및 검색
- O2O 서비스 웹 연동

## 프로젝트 구조

```
test/
├── src/main/
│   ├── java/org/          # Controller, Service, DAO
│   ├── resources/
│   │   ├── mappers/       # MyBatis SQL Mapper
│   │   ├── mybatis-config.xml
│   │   └── log4j.xml
│   └── webapp/
│       ├── WEB-INF/       # Spring 설정, JSP 뷰
│       └── resources/     # 정적 리소스 (CSS, JS, 이미지)
├── pom.xml
└── lib/                   # 외부 라이브러리
```

## 발표 자료

[졸업전시회 최종 PPT (Google Drive)](https://drive.google.com/file/d/1SXI2fTKAMh1xcBR49lZqmR2DQyZ6jzGE/view)

## 시작하기

### 사전 요구사항
- JDK 1.8
- Apache Tomcat 9.0
- MySQL 8.0

### 빌드 및 실행

```bash
mvn clean package
```

Tomcat에 WAR 파일을 배포하여 실행합니다.
