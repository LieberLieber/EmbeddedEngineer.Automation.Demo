<#
.SYNOPSIS
    Downloads and deploys EmbeddedEngineer Automation with optional license configuration.

.DESCRIPTION
    This script downloads the EmbeddedEngineer.Automation package, extracts it,
    and optionally configures a license file if provided.

.PARAMETER Url
    The URL to download the EmbeddedEngineer.Automation.zip file from.
    Default: https://nexus.lieberlieber.com/repository/embeddedengineer-release/EmbeddedEngineer.Automation/LieberLieber_EmbeddedEngineer_Automation_Deploy.zip

.PARAMETER LicenseString
    The license key/string to write to eea.lic file.
    Optional. If not provided, no license file will be created.

.EXAMPLE
    .\Deploy-EmbeddedEngineer.ps1

.EXAMPLE
    .\Deploy-EmbeddedEngineer.ps1 -LicenseString "your-license-key-here"

.EXAMPLE
    .\Deploy-EmbeddedEngineer.ps1 -Url "https://custom-url/package.zip" -LicenseString "your-license-key-here"
#>

[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)]
    [string]$Url = "https://nexus.lieberlieber.com/repository/embeddedengineer-release/EmbeddedEngineer.Automation/LieberLieber_EmbeddedEngineer_Automation_Deploy.zip",
    
    [Parameter(Mandatory = $false)]
    [string]$LicenseString
)

# Remove curl alias binding if it exists
while (Test-Path Alias:curl) { 
    Remove-Item Alias:curl 
}

# Download the package
Write-Output "Downloading from: $Url"
curl $Url --output .\EmbeddedEngineer.Automation.zip -k

# Extract the archive
Write-Output "Extracting archive..."
Expand-Archive .\EmbeddedEngineer.Automation.zip -DestinationPath .\EEA\ -Force

# Handle license file
if ([string]::IsNullOrWhiteSpace($LicenseString)) {
    Write-Output "No License info provided."
}
else {
    Write-Output "Creating License File from provided info"
    $LicenseString | Out-File -FilePath eea.lic -Encoding ASCII
    Write-Output "License file created: eea.lic"
}

Write-Output "Deployment complete!"

