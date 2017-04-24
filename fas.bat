

echo -------------------------------------------------------
echo fas病毒移除
echo fas.txt 為需要刪除的檔案資料庫
echo -------------------------------------------------------

taskkill /f /im acad.exe 2>nul  REM 將acad.exe關閉執行
taskkill /f /im autocad.exe 2>nul  REM 將Autocad關閉執行

%echo off 
for /f %%a in (C:\fas.txt) do (
	echo  尋找 '%%a' 中
	FORFILES /P F:\ /S /M %%a 2>nul /C "cmd /c echo @path"
    FORFILES /P F:\ /S /M %%a 2>nul /C "cmd /c del /F /A: H /A: R @path"
	FORFILES /P G:\ /S /M %%a 2>nul /C "cmd /c echo @path"
    FORFILES /P G:\ /S /M %%a 2>nul /C "cmd /c del /F /A: H /A: R @path"
)



echo It's done
echo. & pause