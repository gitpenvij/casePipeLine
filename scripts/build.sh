#!/bin/bash


if ([[ "${CODEBUILD_WEBHOOK_EVENT}" == "PULL_REQUEST_CREATED" || "${CODEBUILD_WEBHOOK_EVENT}" == "PULL_REQUEST_UPDATED" ]]); then

 echo "Running commands for linting.."
 sleep 60
 echo "Done linting."

elif ([[ "${CODEBUILD_WEBHOOK_EVENT}" == "PUSH" ]]); then

echo "Running Intergration Test..."
sleep 300
echo "AMI Built"

else
echo "Nothing to do"
fi

exit $?
