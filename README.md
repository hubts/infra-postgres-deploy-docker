# 데이터베이스 postgres 빠르게 세팅하기

## 목적

서버에 postgres 의 docker image 를 빠르게 올려 이용할 수 있도록 세팅하기

## 주의

본 내용은 __Ubuntu__ 운영체제에서 이루어졌으므로 다른 운영체제는 별도 명령어를 참조해야 한다.

## 구성

- `docker-compose.yml` : docker-compose 명령어를 통해 실행할 정보를 담은 .yml
- `run.sh` : 데이터베이스에 사용될 환경변수와 docker-compose 명령어를 실행하는 쉘스크립트

## 사용법

데이터베이스의 설치를 원하는 디렉토리로 간다. 여기서 우리는 `home` 으로 간다.

~~~bash
cd ~
~~~

docker-compose 명령어가 존재하는지 확인한다.

~~~bash
docker-compose --version
~~~

없다고 나오면서 설치 명령어를 추천해줄 것이다. 아래 명령어를 통해 설치를 수행한다.

~~~bash
sudo apt install docker-compose
~~~

docker 를 다루기 위한 디렉토리를 만들어준다.

~~~bash
mkdir docker && cd docker
~~~

구성된 코드들을 git clone 하여 다운로드한다. 그러면, docker 디렉토리에 2개의 파일이 생긴다. 

`run.sh` 에 원하는 정보를 대입한다.

~~~bash
vim run.sh
~~~

- `DB_USERNAME` : DB 사용자 이름
- `DB_PASSWORD` : DB 접속 비밀번호
- `DB_DBNAME` : DB 의 데이터베이스 이름 (DB 의 종류가 아닌, 설정할 이름)

작성을 완료하였으면, 실행 이전에 실행 권한을 추가해준다.

~~~bash
chmod +x run.sh
~~~

쉘 스크립트를 실행한다.

~~~bash
./run.sh
~~~

일련의 docker image 설치 혹은 불러오기가 끝나면, 두 개의 docker container 가 실행된다. 아래 명령어로 확인한다.

~~~bash
docker -ps
~~~

혹시 docker 명령어에 대한 아래와 같은 에러가 발생한다면:

~~~bash
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/json: dial unix /var/run/docker.sock: connect: permission denied
~~~

다음 명령어를 실행하여 사용자 접근 권한을 변경한다.

~~~bash
sudo chmod 666 /var/run/docker.sock
~~~
