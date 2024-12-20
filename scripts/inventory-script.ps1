# PowerShell script to generate inventory of computers and their update status
$computers = Get-ADComputer -Filter * -Property Name,OperatingSystem
foreach ($computer in $computers) {
    Write-Output "$($computer.Name) - $($computer.OperatingSystem)"
    # Check update status
    Invoke-Command -ComputerName $computer.Name -ScriptBlock {
        Get-WindowsUpdateLog
    }
}
