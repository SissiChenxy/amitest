# fa19-team-009-ami

## Team Information

| Name | NEU ID | Email Address |
| --- | --- | --- |
| Xinyun Chen | 001826801 | chen.xinyu@husky.neu.edu |
| Qixiang Zhou | 001822974 | zhou.qix@husky.neu.edu |
| Zhiwei Zhang | 001833899 | zhang.zhiwe@husky.neu.edu |

## Start

1. Build VPC and subnets by terraform
    * terraform apply -var-file="<value>"
2. Use script to build ami
    * ./csye6225-ami-build.sh
3. Input all variables required by console
4. Launch instance from ami
5. ssh -i *.pem centos@ip
    * remember chmod 400 for pem file