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

win1120h2:
	docker compose up win1120h2 -d

rm-win1120h2:
	docker compose down win1120h2

winsrv:
	docker compose up winsrv -d

rm-winsrv:
	docker compose down  winsrv

winsrv2025:
	docker compose up winsrv2025 -d

rm-winsrv2025:
	docker compose down  winsrv2025

tiny11:
	docker compose up tiny11 -d

rm-tiny11:
	docker compose down tiny11

