

echo -------------------------------------------------------
echo fas�f�r����
echo fas.txt ���ݭn�R�����ɮ׸�Ʈw
echo -------------------------------------------------------

taskkill /f /im acad.exe 2>nul  REM �Nacad.exe��������
taskkill /f /im autocad.exe 2>nul  REM �NAutocad��������

%echo off 
for /f %%a in (C:\fas.txt) do (
	echo  �M�� '%%a' ��
	FORFILES /P F:\ /S /M %%a 2>nul /C "cmd /c echo @path"
    FORFILES /P F:\ /S /M %%a 2>nul /C "cmd /c del /F /A: H /A: R @path"
	FORFILES /P G:\ /S /M %%a 2>nul /C "cmd /c echo @path"
    FORFILES /P G:\ /S /M %%a 2>nul /C "cmd /c del /F /A: H /A: R @path"
)



echo It's done
echo. & pause