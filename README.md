# Terraform Course

## Preparing the environment
* https://www.terraform.io/
* https://registry.terraform.io/browse/providers
* https://registry.terraform.io/providers/hashicorp/aws/latest/docs

## Install using home brew
* https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started
* brew tap hashicorp/tap
* brew install hashicorp/tap/terraform
* brew update
* brew upgrade hashicorp/tap/terraform
* terraform -help
* terraform -help plan
* terraform -version

## First steps
* Create a user on AWS IAM with full admin access
* Install aws cli
* aws configure (put the key and access key of the user you've created on IAM) 
* aws --version
* Using vs code, install a extension in order to work with terraform
* create first file called "main.tf"
* Generate the key pair, execute:
  * ssh-keygen -f terraform-aws -t rsa
  * it will generate the private and public key
  * move it to the .ssh directory
    * mv terraform-aws ~/.ssh
    * mv terraform-aws.pub ~/.ssh
  * import the key into the aws using the web console ui: ec2 -> Key Pair -> Import key
  
## Provisioning the first infrastructure
* exeute the bellow commands
  * terraform init
  * terraform plan (this command shows what's planned)
  * terraform apply (this command applies and create the ec2 instances for example)
* terraform show (this command shows a picture of how the environment is
* test the ssh access to an ec2 instance

## Removing resources
* You can delete the resource from the ".tf" file and after run the **terraform plan** and **terraform apply** command
* Or you can execute this command on the cli: **terraform destroy -target aws_instance.dev4**
* Or you can also add a block commentary to the file
* command **terraform destroy** will clean everything, execute this command at the end of the course

## Working with Terraform cloud
* create an account on **https://www.terraform.io/cloud**
* create a new ORG "droveda"
* generate a token "User settings"
* create the file **.terraformrc** at the user home directory
* create the file **remote-state.tf** inside the project
* terraform init (necessary to init again)