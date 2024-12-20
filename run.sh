
if [ "$1" == "build" ]; then
  docker build -t gophish:custom .
fi

docker run \
	-p 127.0.0.1:6655:3333 \
	-p 127.0.0.1:6666:80 \
	-v "./config.json:/opt/gophish/config.json" \
	-v "./gophish.db:/opt/gophish/gophish.db" \
	-v "./export:/opt/gophish/export" \
  --name gophish-custom -d gophish:custom
