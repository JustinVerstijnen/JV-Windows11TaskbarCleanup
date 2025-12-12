# -------- Registry settings --------
# Startbutton to the left
Set-ItemProperty `
 -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" `
 -Name "TaskbarAl" `
 -Type DWord `
 -Value 0

# Disable Search
Set-ItemProperty `
 -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Search" `
 -Name "SearchboxTaskbarMode" `
 -Type DWord `
 -Value 0

# Disable Task view
Set-ItemProperty `
 -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" `
 -Name "ShowTaskViewButton" `
 -Type DWord `
 -Value 0

# Disable widgets
Set-ItemProperty `
 -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" `
 -Name "TaskbarDa" `
 -Type DWord `
 -Value 0

Stop-Process -Name explorer -Force
