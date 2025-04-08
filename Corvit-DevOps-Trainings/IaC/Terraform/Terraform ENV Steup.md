# Terraform Command Basics

## Step-01: Introduction
- Install Terraform
- Understand what is Terraform
- Understand Terrafom basic / essential commands
  - terraform version
  - terraform init
  - terraform plan
  - terraform validate
  - terraform apply
  - terraform show
  - terraform refresh
  - terraform providers
  - terraform destroy


## Pre-requisite-1: Install Visual Studio Code (VS Code Editor)
- [Download Visual Studio Code](https://code.visualstudio.com/download)

## Pre-requisite-2: Install HashiCorp Terraform plugin for VS Code
- [Install Terraform Plugin for VS Code](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

## Step-02: Terraform Install
- **Referene Link:**
- [Download Terraform](https://www.terraform.io/downloads.html)
- [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
 OR place the terraform.exe file at C:windows/system32/

### MAC OS
```
# Install on MAC OS
brew install hashicorp/tap/terraform

# Verify Terraform Version
terraform version

# To Upgrade on MAC OS
brew upgrade hashicorp/tap/terraform

# Verify Terraform Version
terraform version

# Verify Installation
terraform help
terraform help plan

# Enable Tab Completion
terraform -install-autocomplete
```

## Step-03: Install Azure CLI
```
# AZ CLI Current Version (if installed)
az --version

# Install Azure CLI (if not installed)
brew update && brew install azure-cli

# Upgrade az cli version
az --version
brew upgrade azure-cli 
[or]
az upgrade
az --version

# Azure CLI Login
az login

# List Subscriptions
az account list

# Set Specific Subscription (if we have multiple subscriptions)
az account set --subscription="SUBSCRIPTION_ID"
```

## Step-04: Understand terrafrom init & provider azurerm
- Understand about [Terraform Providers](https://www.terraform.io/docs/providers/index.html)
- Understand about [azurerm terraform provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs), version and features
- terraform init: Initialize a Terraform working directory
- terraform apply: Builds or changes infrastructure
```

# Initialize Terraform
terraform init

# Validate Configs
terraform plan

# Deploy 
terraform apply


