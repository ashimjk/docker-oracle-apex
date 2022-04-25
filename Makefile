all: build run

build:
	docker build -t ashimjk/oracle-apex .

run:
	docker run -it --rm --volumes-from oracle --link oracle:oracle-database --name apex ashimjk/oracle-apex install

exec:
	docker run -it --rm --volumes-from oracle --link oracle:oracle-database ashimjk/oracle-apex /bin/bash

oracle:
	docker run -d -p 8080:8080 -p 1521:1521 -v /u01/app/oracle --name oracle ashimjk/oracle-12c
