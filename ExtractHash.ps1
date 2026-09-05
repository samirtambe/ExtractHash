# 1. Create temporary directory C:\temp if it doesn't exist
$tempDir = "C:\temp"
if (-not (Test-Path -Path $tempDir)) {
    New-Item -Path $tempDir -ItemType Directory -Force | Out-Null
}

# Set PowerShell Gallery as a trusted repository to avoid interactive prompts
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted

# 4. Install NuGet provider (required prior to downloading modules from PSGallery)
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force | Out-Null

# 2. Install Get-WindowsAutoPilotInfo script/module
Install-Script -Name Get-WindowsAutoPilotInfo -Force | Out-Null

# 3. Add the installed script path to the current session's PATH variable
# Windows PowerShell installs scripts to WindowsPowerShell\Scripts; PowerShell Core uses PowerShell\Scripts
$scriptPath = "$env:ProgramFiles\WindowsPowerShell\Scripts"
if (Test-Path $scriptPath) {
    if ($env:PATH -notlike "*$scriptPath*") {
        $env:PATH += ";$scriptPath"
    }
}

# 5. Run Get-WindowsAutoPilotInfo and output the hardware hash to C:\temp\HWHash.csv
Get-WindowsAutoPilotInfo.ps1 -OutputFile "$tempDir\HWHash.csv"