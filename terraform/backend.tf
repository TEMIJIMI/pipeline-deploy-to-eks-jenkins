terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

#tried cutting bills by not using s3 bucket thanks