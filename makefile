# Use bash as shell instead of the default sh
SHELL			:= /bin/bash
# Use the AWS CLI to get the current region
AWS_REGION		:= $(shell aws configure get region)
# Use the AWS CLI to get the account ID of the CLI user
AWS_ACCOUNT_ID	:= $(shell aws sts get-caller-identity | jq --raw-output '.Account')
