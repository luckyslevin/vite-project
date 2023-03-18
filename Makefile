up-app:
	docker-compose up -d --force-recreate app

up: up-app

logs:
	docker-compose logs -f

install-app:
	docker-compose run --rm app "npm i -g pnpm && pnpm install"

install: install-app

into-app:
	docker-compose exec app bash

unrootify:
	sudo chown -R $$(id -u):$$(id -g) .