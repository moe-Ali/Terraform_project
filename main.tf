module "network" {
    source="./network_module"
    # vpc
    network_vpc_cidr = var.vpc_cidr

    # subnet
    network_public1_subnet_cidr = var.public1_subnet_cidr
    network_public2_subnet_cidr = var.public2_subnet_cidr
    network_avilabilty_zone1 = var.avilabilty_zone1
    network_avilabilty_zone2 = var.avilabilty_zone2
}