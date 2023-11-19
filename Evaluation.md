docker build -t mdalam/carpetfuzz-experiment .
docker stop carpetfuzz-experiment
docker rm carpetfuzz-experiment
docker run -d --name "carpetfuzz-experiment" mdalam/carpetfuzz-experiment tail -f /dev/null
docker exec -it carpetfuzz-experiment bash
screen -dmS fuzzing bash -c "./run_fuzzing.sh -r 1 -p 2 -s 2>&1 |tee fuzzing.log" 
