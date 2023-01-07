#!/bin/bash -e

source 'var.sh'

if [[ $# -ne 1 ]]; then
  echo '[error] 1 argument required'
  return
fi

AWS_PROFILE=${1}

aws cloudformation describe-stack-events --stack-name "${STACK_NAME}" --profile "${AWS_PROFILE}"