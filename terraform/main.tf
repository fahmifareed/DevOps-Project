provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsInstance"
  }
}

resource "kubernetes_cluster" "eks" {
  name     = "devops-cluster"
  region   = "us-west-2"
  node_groups = [
    {
      name   = "node-group-1"
      instance_type = "t2.micro"
    }
  ]
}
