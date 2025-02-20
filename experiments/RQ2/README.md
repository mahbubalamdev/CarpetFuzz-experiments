# RQ2: What is the accuracy of relationship identification?
This subdirectory contains the script and data to reproduce the RQ2 in the paper

## Structure

|Subdirectory|Description|
|----|----|
|[groundtruth/label_validation_dataset.json](groundtruth/label_validation_dataset.json)|Labeled data of the sentences in validation dataset.|
|[groundtruth/label_carpetfuzz_dataset.json](groundtruth/label_carpetfuzz_dataset.json)|Labeled data of the sentences in documents of the 20 programs.|
|[results](results)|Prediction data of the relationship identification model.|
|[scripts/analyze_results.py](scripts/analyze_results.py)|Analyze and calculate the performance of relationship identificaiton module.|


## How to

Execute the following commands:

```
$ python3 scripts/analyze_results.py
```

```
Type             Dataset          Accuracy   FPR        Recall    
Explicit         Validation       92.90%     11.49%     98.42%    
Explicit         CarpetFuzz       98.91%     0.45%      88.57%    
Implicit         CarpetFuzz       93.53% (Precision)    76.02%
```