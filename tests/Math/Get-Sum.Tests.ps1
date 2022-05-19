Push-Location $PSScriptRoot
. "..\..\module\Math\Get-Sum.ps1"

Describe 'Get-Sum' {
    It "Given two numbers, it returns the sum" {
        $sum = Get-Sum 1 3
        $sum | Should Be 4
    }
}
Pop-Location $PSScriptRoot
