@ECHO off

SET cmd=%*

SET cmd=%cmd:C:\=/mnt/c/%
SET cmd=%cmd:\=/%
SET cmd=%cmd:"=\"%

SET cmd=C:\Windows\System32\bash.exe -c "php /home/maxime/composer.phar %cmd%"

CALL %cmd%