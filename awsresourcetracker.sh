#!/bin/bash

# Tracking the AWS Resources
# **************************

# Listing AWS S3 Buckets
# **********************
echo "Printing AWS S3 Buckets"
aws s3 ls

# List EC2 Instances
# ******************
echo "Printing AWS EC2 Instances"
aws ec2 describe-instances

# List aws Lambda Functions
# *************************
echo "Printing AWS Lambda Functions"
aws lambda list-functions

# List IAM Users
# **************
echo "Printing AWS IAM Users"
aws iam list-users



