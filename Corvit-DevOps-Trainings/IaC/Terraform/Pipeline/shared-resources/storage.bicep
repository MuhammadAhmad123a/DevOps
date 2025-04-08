
param storageAccountName string = 'statefilesa151' //${toLower(storageNamePrefix)}${uniqueString(resourceGroup().id)}'
param storageContainerName string = 'statefilecontainer' //'${toLower(containerNamePrefix)}${uniqueString(resourceGroup().id)}'
param location string = 'centralus'

resource sa 'Microsoft.Storage/storageAccounts@2021-06-01' = {
    name: storageAccountName
    location: location
    sku: {
      name: 'Standard_LRS'
    }
    kind: 'StorageV2'
    properties:{
      accessTier: 'Hot'
    }

}
resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-06-01' = {
  name: '${sa.name}/default/${storageContainerName}'  
}
