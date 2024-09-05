clean:
	docker image  prune -a -f
	docker system prune -f
	docker volume prune -f

up: win11 winsrv tiny11

down: rm-win11 rm-winsrv rm-tiny11

win11:
	docker compose up win11 -d

rm-win11:
	docker compose down win11

winsrv:
	docker compose up winsrv -d

rm-winsrv:
	docker compose down  winsrv

tiny11:
	docker compose up tiny11 -d

rm-tiny11:
	docker compose down tiny11

