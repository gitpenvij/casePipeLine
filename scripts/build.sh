#!/bin/bash


if [[ "${CODEBUILD_WEBHOOK_EVENT}" == "PULL_REQUEST_CREATED" || "${CODEBUILD_WEBHOOK_EVENT}" == "PULL_REQUEST_UPDATED" ]]; then

 echo "Running commands for linting.."
 echo "Done linting."

elif [[ "$CODEBUILD_WEBHOOK_EVENT" == "PUSH" ]]; then

echo "Running commands for AMI build.."
echo "AMI Built"

else
echo "Nothing to do"
fi

exit $?
