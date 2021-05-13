# Docker 기반 데이터베이스 빠르게 올리기

## 목적

원하는 서버에 'Docker image 가 존재하는 데이터베이스'를 빠르게 올리고 구동하기 위한 방법을 메모한다.

## 주의

본 수행은 __Ubuntu__ 에서 이루어졌으므로, 다른 운영체제는 다른 명령어를 이용해야 할 수 있다.

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

없다고 나오면, 일반적으로 명령어를 추천해준다. 아래 명령어를 통해 설치를 수행한다.

~~~bash
sudo apt install docker-compose
~~~

docker 를 다루기 위한 디렉토리를 만들어준다.

~~~bash
mkdir docker && cd docker
~~~

구성된 코드들을 git clone 하여 다운로드한다. 그러면, docker 디렉토리에 2개의 파일이 생긴다. `run.sh` 에 원하는 정보를 대입한다.

~~~bash
vim run.sh
~~~

작성을 완료하였으면, 쉘 스크립트를 실행한다.

~~~bash
./run.sh
~~~

일련의 docker image 설치 혹은 불러오기가 끝나면, 두 개의 docker container 가 실행된다. 아래 명령어로 살아있음을 확인한다.

~~~bash
docker -ps
~~~



