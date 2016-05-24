docker rm -fv heroku-tarsnap
docker build -t heroku-tarsnap .
docker run -t --name=heroku-tarsnap heroku-tarsnap

docker cp heroku-tarsnap:/home/build/tarsnap-autoconf/tarsnap tarsnap
