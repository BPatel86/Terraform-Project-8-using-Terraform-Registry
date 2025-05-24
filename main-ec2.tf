module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "devops-class"

  ami                    = "ami-0953476d60561c955"
  instance_type          = "t2.micro"
  key_name               = "Mar2025"
  # monitoring             = true
  vpc_security_group_ids = ["sg-0f9996f96f2afb650"]
  subnet_id              = "subnet-0e3444fc5313c5875"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
