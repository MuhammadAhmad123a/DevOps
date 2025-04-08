Param(
    [Parameter(Mandatory)]
    [string]$sourceVaultName,
    [Parameter(Mandatory)]
    [string]$destVaultName
)


$secretNames = (Get-AzKeyVaultSecret -VaultName $sourceVaultName).Name
$secretNames.foreach{
        Write-Host "Set secret: $_"
        Set-AzKeyVaultSecret -VaultName $destVaultName -Name $_ `
            -SecretValue (Get-AzKeyVaultSecret -VaultName $sourceVaultName -Name $_).SecretValue
    
}

