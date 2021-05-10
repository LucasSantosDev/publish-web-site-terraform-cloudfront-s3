#!/bin/bash

AWS_CONFIG_FILE=.aws/config aws s3 rm s3://s3-lp --recursive

# Other way
# terraform destroy --auto-approve
# In my case I put complete path to execute terraform

/Applications/terraform/terraform destroy --auto-approve