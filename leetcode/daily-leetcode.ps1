# basic script for opening a leetcode page within set time intervals 

$firstProblem = [PSCustomObject]@{
    strtTaskTime = Get-Date '11:00'
    endTaskTime = Get-Date '15:00'
}

$secondProblem = [PSCustomObject]@{
    strtTaskTime = Get-Date '19:00'
    endTaskTime = Get-Date '23:00'
}

$currTime = Get-Date

if ($currTime.TimeOfDay -ge $firstProblem.strtTaskTime.TimeOfDay -and $currTime.TimeOfDay -le $firstProblem.endTaskTime.TimeOfDay) {
    # filter page by easy problems
    start-process chrome.exe "--new-window https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1"
}
else {
    "err"
}