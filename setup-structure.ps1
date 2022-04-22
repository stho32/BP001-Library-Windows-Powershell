﻿$modulename = Read-Host -Prompt "What shall the name of your new module be?"
$token = Read-Host -Prompt "Choose a short about-3-letter token that shall represent commands of your module"
$token = $token.ToUpper()

Write-Host "  - renaming module file"
Rename-Item .\module\Modulename.ps1 "$modulename.psm1"
Write-Host "  - renaming module folder"
Rename-Item .\module $modulename
