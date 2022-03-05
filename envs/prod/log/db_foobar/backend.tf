terraform {
  backend "s3" {
    bucket = "lp-laravel-fargate-app-tfstate"
    key    = "example/prod/log/db_foobar_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}
