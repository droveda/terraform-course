terraform {
  backend "s3" {
    bucket = "terraform-state-alura-droveda"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
    profile = "default"
  }
}