#!/bin/bash

echo "please input the profile: (dev | prod)"
#read "profile"
if [ -z $profile ]; then
    echo "please input one of it"
    #exit 1
fi

echo "please input region: (us-east-1 | us-east-2)"
#read "region"
if [ -z $region ]; then
    echo "please input one of it"
    #exit 1
fi

echo "subnet id"
#read "subnetid"

echo "vpc id"
#read "vpcid"


packer validate ami-template.json

if [ $? -ne 0 ]; then
    echo "validate template json fail"
    exit 1
fi

packer build ami-template.json

#packer build -var "profile=$profile" -var "aws_region=$region" -var "subnet_id=$subnetid" -var "vpcid=$vpcid" ami-template.json

if [$? -ne 0 ]; then
    echo "packer build ami failed"
    exit 1
fi
