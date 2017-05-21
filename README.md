# terraform_ebssnapshot

## How it works
    We are using cloudformation template provided by AWS to deploy CF stack through terraform

## Architecture
![alt EBS Snapshot scheduler](http://docs.aws.amazon.com/solutions/latest/ebs-snapshot-scheduler/images/ebs-snapshot-scheduler-architecture.png)

## Overview
Learn how the CF scheduling works in the following [link](http://docs.aws.amazon.com/solutions/latest/ebs-snapshot-scheduler/overview.html?shortFooter=true)

## Directory structure
* site directory contains the basic provider & module invocation code
* snapshot directory contains the code required for deploying EBS snapshot scheduler
* template directory contains the cloud formation template
## Run command
```
terraform apply -state=redis.tfstate site/
```

