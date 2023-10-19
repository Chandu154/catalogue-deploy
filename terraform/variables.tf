variable "project_name" {
    default = "roboshop"
}

variable "common_tags" {
    default = {
        project = "roboshop"
        Component= "catalogue"
        Environment = "DEV"
        Terraform = true
    }
}

variable "env" {
    default = "dev"
  
}

variable "app_version" {
  # this is just to test variable is flowing from terraform to shell and then to ansible
  default = "100.100.100"
}