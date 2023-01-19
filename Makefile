build-3-8-debian:
	docker build --tag=rever/python:3.8 3-8-debian

build-3-11-debian:
	docker build --tag=rever/python:3.11 3-11-debian

build-3-awscli:
	docker build --tag=rever/python:3-awscli 3-awscli