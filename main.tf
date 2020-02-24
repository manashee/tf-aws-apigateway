provider "aws" {
  access_key = "AKIATDV4HURTFBAU3AOB"
  secret_key = "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"
  profile                           =   "default"
  region                            =   "${var.aws_region}"
}

module "api_gateway"{
    source  = "./modules/api_gateway"
}