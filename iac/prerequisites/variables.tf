# iac/prerequisites/variables.tf

variable "region" {
  default     = "us-east-1"
  description = "region where all the resources will be deployed"
}

variable "prefix" {
  default     = "go-serverless-api"
  description = "organization or service name, has to be unique"
}

variable "ddb_statelock_table" {
  default     = "tf-statelock"
  description = "name of dynamo db table for terraform state locking"
}