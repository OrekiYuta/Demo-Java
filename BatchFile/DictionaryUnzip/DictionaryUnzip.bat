@echo off
echo ʹ��ǰ��������ֵ�Ž����ļ��в��޸��ֵ���ΪDictionaryKey
set /p package=����ѹ�����Ͻ���:
set packagetirm="package=%package: =%"
for %%i in ("%packagetirm%") do set flodername=%%~ni
for %%i in ("%packagetirm%") do set floderpath=%%~dpi
echo ��ѹ���ļ���:%flodername%
echo ��ѹ���ļ�·��:%floderpath%
::set /p type=ѹ������ʽΪ(zip,rar,7z...):
for /f %%a in (DictionaryKey.txt) do bin\HaoZipC.exe e -tzip %package% -p%%a -o"%floderpath%%flodername%"  
pause