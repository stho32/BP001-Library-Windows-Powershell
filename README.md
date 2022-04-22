# BP001-Library-Windows-Powershell
Base Template for a windows based library in powershell

- Thought for powershell version 5.1
- Supports unit tests utilizing the Pester version that comes with windows. It is old but does not require any additional setup. So your server wont be changed in any way.
- Loads all files in the folders beneath
- comes with a neat Write-Log cmdlet that gives you formatted output with timestamps

## Get Started

- From a powershell prompt start `setup-structure.ps1` . It will ask you for the necessary parameters.

## Loading your new module

### just this once
- `Import-Module Path\To\Module\Modulename.psm1`

### with every new powershell you open

- go to your powershell / ise prompt
- notepad $profile
- add the Import-Module-Statement from the above section (just-this-once)

