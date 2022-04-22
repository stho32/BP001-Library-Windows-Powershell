$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Get-ChildItem -Filter "*.ps1" -Recurse | 
	ForEach-Object {
        Write-Host "- $(Get-Date) loading $($_.Fullname)..."
		. ($_.Fullname)
    }

Pop-Location