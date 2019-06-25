variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
 default = "us-east-1"
} 

variable webserver_amis {
 type = "map"
 default = {
   us-east-1 = "ami-6871a115"
   us-west-1 = "ami-18726478"
   ap-south-1 = "ami-5b673c34"
   eu-central-1 = "ami-c86c3f23"
   sa-east-1 = "ami-b0b7e3dc"
    }
} 
