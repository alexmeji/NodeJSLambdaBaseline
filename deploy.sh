#!/bin/bash
#deploys sam based lambda

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ $# == 0 ] ; then
    echo "Please specify the environment to deploy"
    echo "EXAMPLE: deploy.sh staging"
    exit 1;
fi

if [ $1 == development ] ; then
    source .aws/development.cfg
fi

if [ $1 == production ] ; then
    source .aws/production.cfg
fi

aws cloudformation package \
   --template-file $DIR/template.yaml \
   --output-template-file $DIR/output.yaml \
   --s3-bucket $S3_BUCKET_CODE \
   --force-upload

aws cloudformation deploy \
   --template-file $DIR/output.yaml \
   --stack-name $STACK_NAME \
   --capabilities CAPABILITY_IAM