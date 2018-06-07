git clone git@github.com:facebook/fbctf.git

cd fbctf

docker build --build-arg MODE=prod -t fbctf-mysql:latest -f extra/mysql/Dockerfile .
docker build --build-arg MODE=prod -t fbctf-hhvm:latest -f extra/hhvm/Dockerfile .
docker build --build-arg MODE=prod -t fbctf-nginx:latest -f extra/nginx/Dockerfile .
docker build --build-arg MODE=prod -t fbctf-cache:latest -f extra/mysql/Dockerfile .

docker tag fbctf-mysql:latest j12934/fbctf-mysql
docker tag fbctf-hhvm:latest j12934/fbctf-hhvm
docker tag fbctf-nginx:latest j12934/fbctf-nginx
docker tag fbctf-cache:latest j12934/fbctf-cache

docker login -u $1 -p $2

docker push j12934/fbctf-mysql
docker push j12934/fbctf-hhvm
docker push j12934/fbctf-nginx
docker push j12934/fbctf-cache
