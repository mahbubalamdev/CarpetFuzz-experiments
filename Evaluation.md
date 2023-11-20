docker build -t mdalam/carpetfuzz-experiment .
docker stop carpetfuzz-experiment
docker rm carpetfuzz-experiment
docker run -d --name "carpetfuzz-experiment" mdalam/carpetfuzz-experiment tail -f /dev/null
docker exec -it carpetfuzz-experiment bash

10 * 3 fuzzers * 4 programs * 2 repetions = 240 hours = 10 days

screen -dmS fuzzing bash -c "./run_fuzzing.sh -r 2 -p 4 -s 2>&1 |tee fuzzing.log" 

# Initial test
screen -dmS fuzzing bash -c "./run_fuzzing.sh -r 1 -p 2 -s 2>&1 |tee fuzzing.log" 

python3 analyze_manpages.py 2>&1 | tee analyze.log
