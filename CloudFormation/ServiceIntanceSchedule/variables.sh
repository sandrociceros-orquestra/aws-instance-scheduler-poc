AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
CFNSTACK_SCHEDULER_NAME=aws-instance-scheduler