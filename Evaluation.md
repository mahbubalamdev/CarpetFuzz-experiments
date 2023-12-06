docker build -t mdalam/carpetfuzz-experiment .
docker stop carpetfuzz-experiment
docker rm carpetfuzz-experiment
docker run -d --name "carpetfuzz-experiment" mdalam/carpetfuzz-experiment tail -f /dev/null
docker exec -it carpetfuzz-experiment bash

48 hours * 6 fuzzers * 5 programs * 3 repetions = 7200 hours = 300 days

screen -dmS fuzzing bash -c "./run_fuzzing.sh -r 3 -p 5 -s 2>&1 |tee fuzzing.log" 

screen -dmS fuzzing bash -c "./run_fuzzing.sh -r 1 -p 1 -s 2>&1 |tee fuzzing.log" 

# Initial test
screen -dmS test bash -c "./run_fuzzing.sh -r 1 -p 2 -s 2>&1 |tee fuzzing-test.log" 

python3 analyze_manpages.py 2>&1 | tee analyze.log
