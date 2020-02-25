#provider "aws" {
#  access_key = ""
#  secret_key = ""
#  profile                           =   "default"
#  region                            =   "${var.aws_region}"
#}

provider "aws" {
  region                  =  "ap-south-1" 
  shared_credentials_file = "/Users/ashokkumar/.aws/credentials"
  profile                 = "default"
}

#module "api-gateway" {
#  source  = "kurron/api-gateway/aws"
#  version = "0.9.1"
#  # insert the 6 required variables here
#}

module "api_gateway"{
    source  = "./modules/api_gateway"
}
