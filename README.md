# Terraform project
This is a [Terraform](https://www.terraform.io/) project for managing AWS resources. 
It builds AWS infrastructure that contains:
* [VPC](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
* 2 Public [Subnet](https://docs.aws.amazon.com/vpc/latest/userguide/working-with-vpcs.html#AddaSubnet) in the `VPC`
* [IGW](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html) to enable `VPC` access to or from the Internet
* [Route Table](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) to control `IGW`, `VPC` and `Subnet`
* [Security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html) to control the trafice from and to `EC2 Instance`
* 2 [EC2 Instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html) in the public `Subnet` with the HTTP(s) & SSH access
* [RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html) 

and the backend of Terrform is deployed on S3 bucket
