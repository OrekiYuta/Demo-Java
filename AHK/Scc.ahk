/*
	AHK-version��1.1.33.02
*/


;�ö������
CapsLock & 1:: Winset, Alwaysontop, , A

;�ı��滻�������滻ǰ�ߣ���Ҫ���س�
::ack:: ccccc 

;ѭ�����
CapsLock & 2::
loop,100
{
	click
	;sleep 200
}
return

;���Ͱ���
CapsLock & 3::
Send ack
return

!4::
run https://www.baidu.com
return


CapsLock & 4::
MouseGetPos, mouseX, mouseY
        ; �������������꣬������ X ���긳ֵ������ mouseX ��ͬ�� mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
        ; ���� PixelGetColor ��������������������� RGB ֵ������ֵ�� color
StringRight color,color,6
        ; ��ȡ color���ڶ��� color�� �ұߵ� 6 ���ַ�����Ϊ��õ�ֵ�������ģ�#RRGGBB��һ������ֻ��Ҫ RRGGBB ���֡��ѽ�ȡ����ֵ�ٸ��� color����һ�� color����
clipboard = %color%
        ; �� color ��ֵ���͵�������
Msgbox Color get!
return

;�����ǰʱ��
CapsLock & 5::
Send %A_YYYY%/%A_MM%/%A_DD%/%A_Hour%:%A_Min%:%A_Sec%
