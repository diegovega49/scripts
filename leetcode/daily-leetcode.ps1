# basic script for opening a leetcode problem page within set time intervals 

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
    # url for easy and unattempted problems
    start-process chrome.exe "--new-window https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1&status=NOT_STARTED"
}

if ($currTime.TimeOfDay -ge $secondProblem.strtTaskTime.TimeOfDay -and $currTime.TimeOfDay -le $secondProblem.endTaskTime.TimeOfDay) {
    start-process chrome.exe "--new-window https://leetcode.com/problemset/algorithms/?difficulty=EASY&page=1&status=NOT_STARTED"
}
