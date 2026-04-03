# Read license from license.secrete file
$licenseFile = Join-Path -Path $PSScriptRoot -ChildPath "license.secrete"
$licenseContent = Get-Content -Path $licenseFile 

# Parse and extract license string
$licenseString = $licenseContent.Trim()

Write-Host "License loaded: $licenseString"

# Call Deploy-EmbeddedEngineer script
$deployScriptPath = Join-Path -Path $PSScriptRoot -ChildPath "scripts\Deploy-EmbeddedEngineer.ps1"
Write-Host "Executing deployment script: $deployScriptPath"
Write-Host "License parameter: $licenseString"

# Run deployment with execution policy bypass, passing license as parameter
& powershell -ExecutionPolicy Bypass -File $deployScriptPath -LicenseString "$licenseString"


# 04EF962-C541-4627-A463-AD6F1328BFB3}
.\eea\EmbeddedEngineer.Automation.exe --Model .\TraficLight.github.qeax --License .\eea.lic --PackageGuid "`{904EF962-C541-4627-A463-AD6F1328BFB3`}"