git clone https://github.com/DarkCybers/InnexiaMusic /root/innexia
cp innexiamusic/.env /root/innexia
cd /root/innexia
docker build . --rm --force-rm --compress --pull --file Dockerfile -t innexiamusic
docker run --privileged --env-file .env --rm -i innexiamusic
