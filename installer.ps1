$action = New-ScheduledTaskAction -Execute 'C:\streakr\streakr.ps1' `

  -Argument '-NoProfile -WindowStyle Hidden'

$trigger =  New-ScheduledTaskTrigger -Daily -At 9am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "streakr" -Description "http://github.com/kbohinski/streakr"