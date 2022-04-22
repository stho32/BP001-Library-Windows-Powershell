function Write-LogToScreen {
    <#
        .SYNOPSIS
        Write a formatted message during processing

        .DESCRIPTION
        During your processing you will probably like some formatted output.

        This commandlet gives you the opportunity to do this in a more orderly fashion.
        It has sensible defaults for colors, timestamp format.
    #>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$Message,
        [ValidateSet("Information", "Error", "Warning", "Heading")]
        [string]$Type = "Information",
        [int]$IndentationLevel = 0
    )
    
    process {
        $color = "Gray"
        $backgroundColor = "Black"

        switch ($Type) {
            "Error"   { $color = "white"; $backgroundColor = "red" }
            "Warning" { $color = "yellow"; }
            "Heading" { $color = "cyan"; }
        }

        $timestamp = (Get-Date).ToString("dd.MM.yyyy HH:mm:ss")
        $indentation = " " * $IndentationLevel

        Write-Host "$indentation- $timestamp [$Type] $message" -ForegroundColor $color -BackgroundColor $backgroundColor
    }
}