# Note that it is recommended for this file to be named `Makefile`, but, in my case,
# this caused some problems with Jetbrains IDEs recognizing this file as a Makefile.
# See https://www.gnu.org/software/make/manual/make.html#Makefile-Names

# Use bash as shell instead of the default sh
SHELL			:= /bin/bash
# Use the AWS CLI to get the current region
AWS_REGION		:= $(shell aws configure get region)
# Use the AWS CLI to get the account ID of the CLI user
AWS_ACCOUNT_ID	:= $(shell aws sts get-caller-identity | jq --raw-output '.Account')
