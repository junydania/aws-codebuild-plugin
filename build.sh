#!/bin/bash

START_TIME=$(date)

echo "STARTED BUILDING AT THIS TIME ${START_TIME}"

export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain codainfra-staging --domain-owner 461837736704 --query authorizationToken --output text --region eu-central-1`

sudo rm -rf ~/.m2/repository

mvn -s settings.xml install

END_TIME=$(date)

echo "ENDED BUILD AT THIS TIME ${END_TIME}"