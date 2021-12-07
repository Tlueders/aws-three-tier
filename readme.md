## AWS Three Tier Architecture
> This terraform spins up a three tier web architecture on AWS with the backend exisiting in AWS S3:
> + VPC
> + Subnets (public & private)
> + Security Groups (Web, Web Server, Database)
> + Internet Gateway
> + Route Table / Routes
> + ELB
> + EC2
> + Database

## Variables
> + Region (default: us-east-1)
> + AMI Image ID (for EC2)

## Notes
> This could quickly be expanded out to contain multiple availability zones, but for the goal of this repo, we just stuck to a single AZ.
> Some other improvements could be adding variables to specify the EC2 and DB resource size.