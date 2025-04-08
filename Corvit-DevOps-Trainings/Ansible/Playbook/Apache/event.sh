#!/bin/bash

# General Variables
resourceGroup="dmprodseaaks02-rg"
subscriptionId="14228c68-efaa-4739-82df-e19d059c8270"
storageAccountsName="dmprodseast02"
functionappName="dmprodseafunapp02"

# Filter Variables
subject_prefix="/blobServices/default/containers/drivemate/blobs/"
advanced_filter="/vehicle-images/"

sourceResourceId=/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.Storage/storageAccounts/$storageAccountsName

endPoint=/subscriptions/$subscriptionId/resourceGroups/$resourceGroup/providers/Microsoft.Web/sites/$functionappName/functions/image-resizer

eventSubscriptionName=$storageAccountsName-$functionappName

az extension add --name eventgrid

az eventgrid event-subscription create --name $eventSubscriptionName \
--source-resource-id $sourceResourceId --endpoint $endPoint \
--included-event-types Microsoft.Storage.BlobCreated \
--subject-begins-with $subject_prefix \
--advanced-filter subject StringContains $advanced_filter \
--endpoint-type azurefunction