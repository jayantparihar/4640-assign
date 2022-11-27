# 4640-assign
* Note - Terraform should be installed to automate the droplet creation process.

* [Install Terraform ](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) in your machine. 
* create a new API token on Digitalocean
* create a .env file in the dev directory
* copy your token and save it to the .env file ``` export TF_VAR_do_token=<my API tocken> ```
* source your .env file using ``` source .env ```

## 1. File structure 
![image](https://user-images.githubusercontent.com/78824700/204157753-27fbb9aa-e2d3-45b5-aaf4-85ea7ae8faa2.png)

- main.tf(provider info)
- variables.tf(variables, anything that you use twice, or could change(region, size…) )
- terraform.tfvars(variable values)
- output.tf(any output blocks, like ip addresses, and database connection uri)
- database.tf (includes db firewall)
- servers.tf(your droplets, load balancer and firewall for your servers)
- bastion.tf(includes firewall for bastion server)
- network.tf (your vpc)
- data.tf(data blocks, like your ssh keys)
- .env (contains API token obtained from digitalocean)

To compile this project, start with command:
``` terraform init ```

To validate this project run:
``` terraform validate ```

To plan the project 
``` terraform plan ```

To build all the resources defined in these files: ``` terraform apply ```

![linux](https://user-images.githubusercontent.com/78824700/204157995-cce56109-4ecb-4177-a9c1-b85546a44079.JPG)

## Testing 
1. Testing that we can connect to bastion server:
![image](https://user-images.githubusercontent.com/78824700/204158159-17971818-4e39-4162-a29c-28165c2ee904.png)

2. Testing the connection to our mongodb database:
* On Digital ocean allow connection from your computer temporarily. 
* Go to the digitalocean console and copy the database connection string and get the password from terraform.tfstate file.
* Connect to database 
![connect_to_db](https://user-images.githubusercontent.com/78824700/204158437-77254854-9218-4f3d-af50-02bc385da37b.JPG)

## Destroy 
Destroy everything. 
``` terraform destroy ```


