provider "aws" {
  access_key = "***REMOVED***"
  secret_key = "***REMOVED***"
  profile                           =   "default"
  region                            =   "${var.aws_region}"
}

module "api_gateway"{
    source  = "./modules/api_gateway"
}