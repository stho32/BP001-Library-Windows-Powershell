<#
    This file demonstrates how a script that uses the module can load and reload the module 
    for a fast development cycle which changes the script as well as the module
#>

$ErrorActionPreference = "Stop"

Remove-Module Modulename*
Import-Module ..\module\Modulename.ps1

Write-LogToScreen "Hello World" -Type Warning
