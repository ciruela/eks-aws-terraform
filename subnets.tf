# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

####################################################################
#   PUBLIC SUBNETS
####################################################################
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets_public_cidr_blocks[0]
  availability_zone       = var.subnets_availability_zones[0]
  map_public_ip_on_launch = var.map_public_ip_on_launch 

  # A map of tags to assign to the resource.
  tags = {
    Name                                    = "public-${var.subnets_availability_zones[0]}"
    "kubernetes.io/cluster/${var.eks_name}" = "shared"
    "kubernetes.io/role/elb"                = 1
  }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets_public_cidr_blocks[1]
  availability_zone       = var.subnets_availability_zones[1]
  map_public_ip_on_launch = var.map_public_ip_on_launch

  # A map of tags to assign to the resource.
  tags = {
    Name                                    = "public-${var.subnets_availability_zones[1]}"
    "kubernetes.io/cluster/${var.eks_name}" = "shared"
    "kubernetes.io/role/elb"                = 1
  }
}

####################################################################
#   PRIVATE SUBNETS
####################################################################

resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets_private_cidr_blocks[0]
  availability_zone = var.subnets_availability_zones[0]

  # A map of tags to assign to the resource.
  tags = {
    Name                                    = "private-${var.subnets_availability_zones[0]}"
    "kubernetes.io/cluster/${var.eks_name}" = "shared"
    "kubernetes.io/role/internal-elb"       = 1
  }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets_private_cidr_blocks[1]
  availability_zone = var.subnets_availability_zones[1]

  # A map of tags to assign to the resource.
  tags = {
    Name                                    = "private-${var.subnets_availability_zones[1]}"
    "kubernetes.io/cluster/${var.eks_name}" = "shared"
    "kubernetes.io/role/internal-elb"       = 1
  }
}