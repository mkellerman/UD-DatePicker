Import-Module -Name UniversalDashboard.Community
Import-Module "C:\UD\UDatePicker\DayPicker\src\output\UniversalDashboard.DayPicker\UniversalDashboard.DayPicker.psd1"
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        New-UDLayout -Columns 2 -Content {
            New-DayPicker
        }
    }
)
