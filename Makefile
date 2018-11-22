NAME = necbaas/grafana-server

PORT_OPTS = -p 3000:3000

all: image

image:
	docker build -t $(NAME) .

rmi:
	docker rmi $(NAME)

run: 
	docker run -it $(PORT_OPTS) $(NAME)

daemon: 
	docker run -d $(PORT_OPTS) $(NAME)

bash:
	docker run -it --rm --entrypoint /bin/bash $(NAME)
