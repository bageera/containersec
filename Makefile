red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`


default:
	docker-compose ps

ps:
	@docker-compose ps

build:
	@docker-compose pull pritunl
	@docker-compose pull mongodb

shell:
	@docker-compose exec pritunl bash

stop:
	@docker-compose down

dbshell:
	@docker-compose exec mongodb bash

up:
	@docker-compose up -d 

