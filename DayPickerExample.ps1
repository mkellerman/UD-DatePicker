Import-Module -Name UniversalDashboard.Community
Import-Module UniversalDashboard.DayPicker
Import-Module UniversalDashboard.WeekPicker
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        New-UDLayout -Columns 2 -Content {
            New-DayPicker
            New-WeekPicker
        }
    }
)
