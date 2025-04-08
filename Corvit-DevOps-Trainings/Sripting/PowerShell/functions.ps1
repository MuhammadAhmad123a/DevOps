# Function to greet a person
function Greet-Person { 
    param (
        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    Write-Host "Hello, $Name! Welcome to PowerShell."
}

# Function to calculate the sum of two numbers
function Add-Numbers {
    param (
        [Parameter(Mandatory = $true)]
        [int]$Number1,

        [Parameter(Mandatory = $true)]
        [int]$Number2
    )

    $sum = $Number1 + $Number2
    return $sum
}

# Calling the Greet-Person function
Greet-Person -Name "John"

# Calling the Add-Numbers function
$result = Add-Numbers -Number1 5 -Number2 3
Write-Host "The sum is: $result"
