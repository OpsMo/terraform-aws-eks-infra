


# AWS EKS Cluster using Terraform 
=====================================

## Overview

This Terraform project to creates a complete AWS EKS cluster (including networking, IAM roles, and security. It also sets up S3 and DynamoDB for Terraform state management.

## Resources Created

* EKS Cluster and managed Node Group
* VPC with public and private subnets
* Internet Gateway and NAT Gateway 
* Route Tables
* Required IAM roles and policies 
* S3 bucket and DynamoDB table for remote tf state (storage and locking)

## Requirements

* Install Terraform 
* AWS Account with EKS and EC2 permissions
* AWS Cli (update/set credentials with `aws configure`)

## Before you run Terraform
* Created S3 bucket and DynamoDB table and Update the `backend.tf` file (for remote terraform.tfstate)
* Chack /set Terraform and EKS Versions



## Usage 

* Just Clone this repo
* Make sure to update defualt values (you want) in `variables.tf` or create your own `terraform.tfvars` file
* Run `terraform init` to initialize the project
* Run `terraform apply` `terraform apply` to create the EKS cluster

