terraform {
  backend "s3" {
    bucket  = "kanban-app"
    key     = "state"
    region  = "us-east-1"
    encrypt = true
  }
}
