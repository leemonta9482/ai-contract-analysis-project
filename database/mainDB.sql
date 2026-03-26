-- 데이터베이스 생성
CREATE DATABASE mydb
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

-- 데이터베이스 지정
USE warmtechProject;

-- 일반 유저 테이블 생성
CREATE TABLE comUser (
    usercode BIGINT AUTO_INCREMENT PRIMARY KEY,

    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL,

    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,

    business_type VARCHAR(100),   -- 업종

    agreement TINYINT(1) NOT NULL DEFAULT 0,  -- 동의서 (0, 1)

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 전문 유저 테이블 생성
CREATE TABLE proUser (
    usercode BIGINT AUTO_INCREMENT PRIMARY KEY,

    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL,

    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,

    specialty VARCHAR(100) NOT NULL,     -- 전문분야
    company_info VARCHAR(255),           -- 회사정보
    profile_image VARCHAR(255),          -- 프로필 사진 (URL 경로)
    description TEXT,                    -- 소개문구

    agreement TINYINT(1) NOT NULL DEFAULT 0,  -- 동의서 (0, 1)

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 정보 검색
select * from warmtechproject.comuser;
select * from warmtechproject.prouser;

