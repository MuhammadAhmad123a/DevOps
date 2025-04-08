#!/bin/bash

# Variables
resourceGroupName="myResourceGroup"
location="eastus"
vmName="myVM"
adminUser="azureuser"
adminPassword="MyPassword123"

# Create resource group
az group create --name $resourceGroupName --location $location

# Create virtual network
az network vnet create \
  --resource-group $resourceGroupName \
  --name myVnet \
  --subnet-name mySubnet

# Create public IP address
az network public-ip create \
  --resource-group $resourceGroupName \
  --name myPublicIP

# Create network security group
az network nsg create \
  --resource-group $resourceGroupName \
  --name myNSG

# Create network security group rule for SSH
az network nsg rule create \
  --resource-group $resourceGroupName \
  --nsg-name myNSG \
  --name SSH \
  --priority 1000 \
  --destination-port-ranges 22 \
  --access Allow \
  --protocol Tcp

# Create network interface
az network nic create \
  --resource-group $resourceGroupName \
  --name myNIC \
  --vnet-name myVnet \
  --subnet mySubnet \
  --network-security-group myNSG \
  --public-ip-address myPublicIP

# Create virtual machine
az vm create \
  --resource-group $resourceGroupName \
  --name $vmName \
  --location $location \
  --nics myNIC \
  --image UbuntuLTS \
  --admin-username $adminUser \
  --admin-password $adminPassword \
  --generate-ssh-keys

# Delete virtual machine
az vm delete \
  --resource-group $resourceGroupName \
  --name $vmName \
  --yes

# Delete resource group (optional)
# az group delete --name $resourceGroupName --yes
