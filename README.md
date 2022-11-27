# 4640-assign
* Note - Terraform should be installed to automate the droplet creation process.

* [Install Terraform ](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) in your machine. 
* create a new API token on Digitalocean
* create a .env file in the dev directory
* copy your token and save it to the .env file ``` export TF_VAR_do_token=<my API tocken> ```
* source your .env file using ``` source .env ```

## File structure 
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
