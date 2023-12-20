#이전에 사용한 컨테이너 종료

docker stop mycontainer-prev || true
docker rm mycontainer-prev || true

# 이전 버전의 이미지 삭제
docker image prune -f

#이전 버전의 이미지를 blue로 태깅
docker tag apptest-docker apptest-docker-prev

# 새버전의 이미지를 green으로 태깅
docker tag apptest-docker apptest-docker-new

# 컨테이너 실행
docker run -d -p 3001:3000 --name mycontainer-new apptest-docker-new

#nginx 설정파일 업데이트
sudo cp nginx-blue.conf /etc/nginx/sites-available/default

#nginx재시작
sudo service nginx restart
