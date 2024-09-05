clean:
	docker image  prune -a -f
	docker system prune -f
	docker volume prune -f

up: win11 winsrv

down: rm-win11 rm-winsrv

win11:
	docker compose up win11 -d

winsrv:
	docker compose up winsrv -d

rm-win11:
	docker compose down win11

rm-winsrv:
	docker compose down  winsrv

