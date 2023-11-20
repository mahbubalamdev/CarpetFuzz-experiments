build:
	docker build -t mdalam/carpetfuzz-experiment .

run:
	docker run -d --name "carpetfuzz-experiment" -v .:/root/CarpetFuzz-experiments mdalam/carpetfuzz-experiment tail -f /dev/null

exec:
	docker exec -it carpetfuzz-experiment bash

clean:
	docker stop carpetfuzz-experiment || true
	docker rm carpetfuzz-experiment || true
	docker rmi $$(docker images | grep none | awk '{print $$3}')

analyze_manpages:
	python3 analyze_manpages.py 2>&1 | tee analyze.log
