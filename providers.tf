terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region              = "${var.aws_region}"
  shared_config_files = ["${var.provider_shared_config}"]
  profile             = "${var.provider_profile_name}"

}