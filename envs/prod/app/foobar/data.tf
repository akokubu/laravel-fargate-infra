data "aws_caller_identity" "self" {}

data "aws_region" "current" {}

data "terraform_remote_state" "network_main" {
  backend = "s3"

  config = {
    bucket = "lp-laravel-fargate-app-tfstate"
    key    = "${local.system_name}/${local.env_name}/network/main_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "routing_longposition_ml" {
  backend = "s3"

  config = {
    bucket = "lp-laravel-fargate-app-tfstate"
    key    = "${local.system_name}/${local.env_name}/routing/longposition_ml_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}
