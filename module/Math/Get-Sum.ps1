function Get-Sum {
    <#
        .SYNOPSIS
        Adds two numbers
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [int]$A,

        [Parameter(Mandatory = $true)]
        [int]$B
    )
    
    process {
        $A + $B
    }
}