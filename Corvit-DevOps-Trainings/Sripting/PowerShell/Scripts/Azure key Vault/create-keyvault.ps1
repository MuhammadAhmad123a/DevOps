# Install Following Modules Before Starting
# Install-Module -Name Az
# Install-Module Az.Resources

# Connect to Azure
Connect-AzAccount -TenantId 51f4484e-83bb-48c8-83b4-e3dc759e2531

# Variables
$resourceGroupName = "rg"
$location = "eastus"
$keyVault1Name = "SourceazmyKeyVault4541"
$keyVault2Name = "DestazmyKeyVault5301"

# Create the resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create Key Vault 1
$keyVault1 = New-AzKeyVault -Name $keyVault1Name -ResourceGroupName $resourceGroupName -Location $location -Sku Standard -EnabledForDeployment

# Create Key Vault 2
$keyVault2 = New-AzKeyVault -Name $keyVault2Name -ResourceGroupName $resourceGroupName -Location $location -Sku Standard -EnabledForDeployment

# Output the Key Vault details
Write-Host "Key Vault 1 created:"
$keyVault1
Write-Host "`nKey Vault 2 created:"
$keyVault2
