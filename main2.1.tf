           main.tf
resource "aws_instance" "my-ec2" {
    ami ="ami-0464f90f5928bccb8"
    instance_type ="t2.mciro"      
    tags={
        Name ="my-ec2"        #this code normal resource creation
    }
  
}


# real time start 

resource "aws_instance" "mybala" {
    ami =var.aws_ami
    instance_type="t2.mciro"
    count=var.aws_instance_count     # this method calling for variables
    tags={
        Name ="mybala"
    }
  
} 

_____________________________________________________________________________________________________
                                  provider.tf

terraform{
    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "~>3.0"
      }
    }
}

provider "aws"{
    region ="ap-south-1"   #this is terraform and provider block fixed one 
}


# real time start


terraform{
    required_providers {
      aws ={
        source = "hashicorp/aws"
        version = "~>3.0"
      }
    }
}

provider "aws"{
    region =var.aws_region   #this real time 
     profile="default"
}
 ---------------------------------------------------------------------------------------------------------------------------

                                   variabes.tf

variable "name-resource"{
    description = "give the what type of the resource using"
    type = string # which type of date using 
    default = "give the resource date "

}  # this a basic variables 



# real time start

variable "aws_region" {   # this variables calling for provider.tf  
    type =string
    default ="ap-south-1"
  
}

variable "aws_ami" {
    type = string
    default = "ami-0464f90f5928bccb8"  # this variables calling for main.tf resoruces file # string using the "" duble qutaion
  
}

variable "aws_instance_count"{
type = number
default = 2   # this line only give the number 
}

                                   
