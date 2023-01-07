#!/bin/bash -e

source 'var.sh'

if [[ $# -ne 1 ]]; then
  echo '[error] 1 argument required'
  return
fi

AWS_PROFILE=${1}

aws cloudformation create-stack --stack-name "${STACK_NAME}"              \
                                --template-body "file://${TEMPLATE_PATH}" \
                                --capabilities 'CAPABILITY_NAMED_IAM'     \
                                --profile "${AWS_PROFILE}"