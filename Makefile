build:
	docker build -t mdalam/carpetfuzz-experiment .

run:
	docker stop carpetfuzz-experiment || true
	docker rm carpetfuzz-experiment || true
	docker run -d --name "carpetfuzz-experiment" mdalam/carpetfuzz-experiment tail -f /dev/null

clean:
	docker rmi $(docker images -f "dangling=true" -q)
