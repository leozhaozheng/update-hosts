@echo off

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c "^&chr(34)^&"%~0"^&chr(34)^&" ::","%cd%","runas",1)(window.close)&&exit

cd /d %~dp0

curl -k -o sources\04-githubhosts.txt https://hosts.gitcdn.top/hosts.txt

type sources\* >>hosts

move /Y hosts C:\Windows\System32\drivers\etc\hosts

ipconfig /flushdns

pause
