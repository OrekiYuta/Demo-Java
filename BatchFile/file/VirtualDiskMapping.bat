@echo off
goto start
�������̷��´����ļ���
������������̷���ִ��ɾ���̷�ӳ���ϵ
���������̷���ӳ�䵽�����̷����ļ���
�������̷�
:start

md H:\RECYCLED\UDrives.{25336920-03F9-11CF-8FD0-00AA00686F13}>NUL
if exist M:\NUL goto delete
subst M: H:\RECYCLED\UDrives.{25336920-03F9-11CF-8FD0-00AA00686F13}
start M:\
goto end
:delete
subst /D M:
:end