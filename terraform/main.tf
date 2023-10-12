
module "catalogue_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  ami = data.aws_ami.devops-ami.id
  instance_type          = "t3.medium"
  vpc_security_group_ids = [data.aws_ssm_parameter.catalogue_sg_id.value]
  #it should be in roboshop db subnet 
  subnet_id = element(split(",",data.aws_ssm_parameter.private_subnet_ids.value), 0)
  //user_data = file("catalogue.sh")
  tags = merge (
    {
    Name= "catalogue-DEV-AMI"
  },var.common_tags
  )
} 
