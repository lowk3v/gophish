docker run \
	-p 127.0.0.1:6655:3333 \
	-p 127.0.0.1:6666:80 \
	-v "./config.json:/opt/gophish/config.json" \
	-v "./gophish.db:/opt/gophish/gophish.db" \
  --name gophish-custom -d gophish/gophish:latest
