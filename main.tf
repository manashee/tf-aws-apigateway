provider "aws" {
  shared_credentials_file = "/Users/ashokkumar/.aws/credentials"
  profile                           =   "default"
  region                            =   "${var.aws_region}" 
}

module "api_gateway"{
    source  = "./modules/api_gateway"
    api_name = "${var.api_name}"
    swgfile = "${file(var.swgfile)}"
}
