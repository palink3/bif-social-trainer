---
name: 버그 제보
about: 동작하지 않는 기능이나 오류를 제보해주세요
title: "[BUG] "
labels: bug
assignees: ''
---

## 🐞 버그 설명
감정 분석 결과가 null로 나와요

## 🔁 재현 방법
1. 서버 실행 후 `/emotion-analysis` API 호출
2. 특정 입력값으로 요청
3. 응답값이 null로 출력됨

## 📱 환경
- 서버: FastAPI
- 요청 툴: Postman / Flutter client
- 브랜치: `server/main`

## 📸 스크린샷
(필요 시 첨부)