 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "devops-batch57"
    key     = "${var.ENV}/vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}