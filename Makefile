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

rundeckshell:
	@docker-compose exec rundeck bash

rundeckroot:
	@docker-compose exec -u 0 rundeck bash

rundeckrestart:
	@docker-compose restart rundeck

rundecklogs:
	@docker-compose logs rundeck

graylogrestart:
	@docker-compose restart graylog



up:
	echo deploying
	@docker-compose up -d 

