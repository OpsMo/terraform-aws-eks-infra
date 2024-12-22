## backend for remote state file s3 and dynamodb.
terraform {
    backend "s3" {
        bucket = "terra-state-eks-opsmo-demo" 
        key    = "terraform.tfstate"    
        region = "us-east-1" # we can't use var.aws_region variable here directly
        encrypt = true
        dynamodb_table = "tf-locking-state"
    }
}