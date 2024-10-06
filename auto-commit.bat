@echo off
:loop
    rem Run the push.sh script using Git Bash (you need Git for Windows installed)
    "C:\Program Files\Git\bin\bash.exe" -c "c:/Users/Administrator/Documents/GitHub/img/push.sh"
    
    rem Wait for 10 minutes (600 seconds)
    timeout /t 600 /nobreak
    
    rem Go back to the loop to repeat the process
    goto loop
