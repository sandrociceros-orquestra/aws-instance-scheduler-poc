#!/bin/bash
source variables.sh

export $(cut -d= -f1 variables.sh)

cat AwsInstanceScheduler_BrazilOfficehours.yaml | envsubst > AwsInstanceScheduler_BrazilOfficehours_Subst.yaml

aws cloudformation deploy --template-file AwsInstanceScheduler_BrazilOfficehours_Subst.yaml --stack-name aws-instance-scheduler--bra-default-officehours

rm AwsInstanceScheduler_BrazilOfficehours_Subst.yaml