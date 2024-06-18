module "prd" {
  source = "github.com/sorah/publikes"

  iam_role_prefix = "PublikesPrd"
  name_prefix     = "publikes-prd"
  s3_bucket_name  = "nonamea774-favs"
  app_domain      = "fav.nna774.net"

  certificate_arn       = "arn:aws:acm:us-east-1:486414336274:certificate/d780d65d-15e8-4c9e-8628-4b3823151204"
  cloudfront_log_bucket = "nana-log.s3.amazonaws.com"
  cloudfront_log_prefix = "fav.nna774.net/"
}

terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "nana-terraform-state"
    region = "ap-northeast-1"
    key = "publikes.tfstate"
    encrypt = true
  }
}
