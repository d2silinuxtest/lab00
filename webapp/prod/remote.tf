terraform {
  backend "s3" {
    bucket = "d2si-bucket-training-linux-lab01"
    key    = "vpc/terraform/tfstate1"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "coreinfra" {
  backend = "s3"

  config {
    bucket = "d2si-bucket-training-linux-lab01"
    key    = "vpc/terraform/tfstate"
    region = "eu-west-1"
  }
}
