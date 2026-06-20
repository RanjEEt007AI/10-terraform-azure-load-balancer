# Terraform Azure Load Balancer

This project demonstrates how to create an Azure Load Balancer using Terraform simple code.

## Resources Created

* Resource Group
* Public IP Address
* Azure Load Balancer

## Prerequisites

Before running this project, ensure you have:

* Terraform installed
* Azure subscription
* Azure CLI installed
* Logged into Azure

```bash
az login
```

## Project Structure

```bash
10-terraform-azure-load-balancer/
│── main.tf
│── provider.tf
│── .gitignore
│── README.md
```

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview execution plan:

```bash
terraform plan
```

Create resources:

```bash
terraform apply -auto-approve
```


## Azure Load Balancer Features

* Uses Standard SKU
* Creates Public IP
* Configures Frontend IP
* Simple and beginner-friendly Terraform code

## Author

Ranjeet Kumar

GitHub: https://github.com/RanjEEt007AI
