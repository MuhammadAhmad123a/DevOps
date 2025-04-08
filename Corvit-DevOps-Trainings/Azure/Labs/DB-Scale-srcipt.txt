$TenantId = Get-AutomationVariable -Name "TenantId"
$SubscriptionId = Get-AutomationVariable -Name "SubscriptionId"
$ClientId = Get-AutomationVariable -Name "ClientId"
$ClientSecret = Get-AutomationVariable -Name "ClientSecret"

$creds = [System.Management.Automation.PSCredential]::new($ClientId, (ConvertTo-SecureString $ClientSecret -AsPlainText -Force))
Connect-AzAccount -Tenant $TenantId -Subscription $SubscriptionId -Credential $creds -ServicePrincipal

$DatabaseName = "db151"
$ServerName = "server152"
$ResourceGroupName = "rg"

Set-AzSqlDatabase -ResourceGroupName $ResourceGroupName -DatabaseName $DatabaseName -ServerName $ServerName -Edition "Standard" -RequestedServiceObjectiveName "S0"