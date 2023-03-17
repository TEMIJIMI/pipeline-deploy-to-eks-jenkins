terraform {
  backend "s3" {
    bucket = "my-eks-exam-bucket"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}