#!/bin/bash

# Perform different operations on Aamazon S3
# *******************************************

# Creating an AWS S3 Bucket
# *************************
echo "Creating an S3 BUcket"
echo "Enter the bucket name"
read bucket_name

aws s3 mb s3://$bucket_name
echo "S3 bucket named $bucket_name created successfully"

# Uploading Files into AWS S3
# ***************************
echo "Uploading files into S3 Bucket that we have created i.e. $bucket_name"
echo "Enter the path of the files that you wanted to upload"
read path

aws s3 cp $path s3://$bucket_name/ --recursive
echo "Files uploaded successfully to the bucket $bucket_name"

# Listing AWS S3 Buckets
# **********************
echo "Printing AWS S3 Buckets"
aws s3 ls

# Deleting an AWS S3 Bucket
# *************************
echo "Deleting the S3 Bucket"
echo "Enter the name of the s3 Bucket that you wanted to delete"
read rm_bucket_name
aws s3 rm s3://$rm_bucket_name --recursive
aws s3 rb s3://$rm_bucket_name --force
echo "S3 bucket $rm_bucket_name deleted successfully."

