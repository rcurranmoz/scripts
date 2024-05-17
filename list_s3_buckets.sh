#!/bin/bash

for bucket in `aws --profile las s3api list-buckets | jq .Buckets[].Name -r`; do
    tags=$(aws --profile las s3api get-bucket-tagging --bucket $bucket | jq -c '.[][] | {(.Key): .Value}' | tr '\n' '\t')
    echo $bucket '|' $tags
done