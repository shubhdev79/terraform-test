# Creating the Infra using Terraform

Building VPC peering network and accessing the web servers.

Goal: To access Web or DB Instances residing in Private subnets and in Different VPC.

* Accessing the Instance through JumpBox which is in Public-VPC(Open to world)
* By Peering the VPCS, define & implement the security group policies.
* ALB is created.
* ALB is in Private VPC and will be handling the load of private instances.
* Currently ALB is serving HTTP Traffic.

Testing done, above infrastructure is working fine.

* ALB is loading, IIS Installation done in the Private EC2 instance(Through Powershell Script).
* NAT is attached, just in case you want to update any package or softwares in your EC2 instance (But Heavily Chargeable, Make sure you delete it after the project implementation)

---------------------------------------------------------------------------------------
# Requirements:

:Resource Requirements:

* 2 VPCs - Management & Production
* 5 Subnets - 4 in Production & 1 in Management
* 3 Security Groups - 1 PROD, 1 MGMNT & 1 ALB

* 3 Route Tables - 1 Public , 1 Private in Production & 1 in Management
* 2 Internet Gateways - 1 Prod-IGW, 1 Mgmt-IGW
* 1 NAT Gateway - For Private Ec2 Instance(Required to Accessthe Internet Feautures to upgradet the packages)

* 1 VPC Peering Connection -
* 1 ALB - To distribute the load of our Web servers.
* 2 EC2 Instances - 1 In Mgmnt i.e your Bastion Host, 1 in Production i.e it will be WEB-DB Server

---------------------------------------------------------------------------------------

# What's Next ?

* Create a Website.
* Use Route53 to get the domain (ALB DNS wont get any HTTPS certificate, you should be having Domain)
* Register it through Route53.
* Monitor the Application through CloudWatch or Datadog etc.
* Place the website code in GitHub, use Jenkins to deploy the application and to make changes regularly.
