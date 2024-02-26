module "vpc_module"{
    source="./vpc"
    vpc_cidr_block = "10.0.0.0/16"
    vpc_name = "demo-vpc"
}
module "subnet_module"{
    source="./subnet"
subnet_name = "demo-Name"
 subnet_cidr_block="10.0.1.0/24"
 availability_zone="us-west-2a"
 vpc__id = module.vpc_module.vpc_id
}
module "routetable_module" {
    source="./route-table"
    cidr_block_value = "0.0.0.0/0"
    route_table_name = "ecs-route-table"
    subnet__id = module.subnet_module.subnet-id
    vpc__id = module.vpc_module.vpc_id
    igw__id =module.igw_module.internet_gateway_id
}
module "igw_module" {
    source="./igw"
    igw_name = "ecs-igw"
    vpc__id = module.vpc_module.vpc_id
}
module "ecs_module" {
    source = "./ecs"
    ecs_name = "cluster_name"
    sg_id = module.sg_module.sg_id
    subnet-id = module.subnet_module.subnet-id
  
}
module "sg_module" {
    source = "./sg"
    vpc__id = module.vpc_module.vpc_id
  
}

