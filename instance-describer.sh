#!/bin/bash

aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID}
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY}
aws configure set default.region ap-southeast-1

instance_id=aws ec2 describe-instances --filters Name=tag:Name,Values=helloworld | jq —raw-output .Reservations[].Instances[].PrivateIpAddress
echo "$instance_id"
