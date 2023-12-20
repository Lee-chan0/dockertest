FROM node:18

#앱 디렉터리 생성
WORKDIR /app

#앱 의존성 설치
COPY package*.json ./

RUN npm install

# 내가 만든 앱 소스코드 추가
COPY . .

#포트번호
EXPOSE 3000

#서버를 실행하기 위한 명령문 / node server.js
CMD [ "node" , "server.js" ]