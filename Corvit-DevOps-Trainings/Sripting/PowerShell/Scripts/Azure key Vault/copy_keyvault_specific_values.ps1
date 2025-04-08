Param(
    [Parameter(Mandatory)]
    [string]$sourceVaultName,
    [Parameter(Mandatory)]
    [string]$destVaultName
)

$SecretNames = "var2",
"var1"



$SecretNames.foreach{
    # Uncomment Subscription setting lines if you want to copy cross subscriptions
    # Set-AzContext -SubscriptionId "8850e9b6-77da-4602-8959-4031d23fcc92"
    $value=(Get-AzKeyVaultSecret -VaultName $sourceVaultName -Name $_).SecretValue
    # Set-AzContext -SubscriptionId "4cb00f13-1550-4a42-87bd-8e9ea49d4968"
    Set-AzKeyVaultSecret -VaultName $destVaultName -Name $_ `
        -SecretValue $value
}
