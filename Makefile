up:
	docker-compose up -d

stop:
	docker-compose stop

destroy:
	docker-compose down

build:
	docker-compose up --build -d

bash: up
	docker-compose run --rm ansible_devops sh

restart: stop up