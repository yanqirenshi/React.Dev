##### ################################################################
#####
#####  API サーバーのための Dockerfile
#####
#####   Build
#####   =====
#####    docker build -t renshi/react.dev -f Dockerfile .
#####
#####   Run
#####   ===
#####    docker run -it -d --name renshi/react.dev react.dev
#####    docker exec -it react.dev bash
#####
#####   Variables
#####   =========
#####    ....
#####
##### ################################################################
# https://github.com/yanqirenshi/Dockerfiles/blob/master/Dockerfile.Base
FROM renshi/base

USER cl-user
WORKDIR /home/cl-user

ENTRYPOINT [ "/bin/bash"]



# Usage
# =====
#
#  docker run -p 3000:3000 -v /Users/satoshi.iwasaki/prj/fg/React.Dev/prj:/home/cl-user/prj -it renshi/react.dev
#  cd prj
#  npx create-react-app my-app
#  cd my-app
#  npm start
#
