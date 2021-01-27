docker-build:
	docker build --tag ansible:latest .
docker-run:
	docker run --name ansible -it --volume $(PWD):/lab ansible:latest
docker-rm:
	docker stop ansible
	docker container rm ansible
docker-exec:
	docker exec -it ansible bash
docker-restart: docker-rm docker-run docker-exec

