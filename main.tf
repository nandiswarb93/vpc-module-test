module "vpc" {
    # source = "../terraform-aws-vpc"
    source = "git::https://github.com/nandiswarb93/terraform-aws-vpc.git?ref=master"
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
    #public subnet 
    public_subnet_cidrs = var.public_subnet_cidrs

    #private subnet 
    private_subnet_cidrs = var.private_subnet_cidrs

    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true


    # source = "../terraform-aws-vpc"
    # vpc_cidr = "10.0.0.0/16"
    # project_name = "robosjop"
    # environment = "dev"
}



# data "aws_availability_zones" "available" {
#     state = "available"
# }