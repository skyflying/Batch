@echo off
echo -------------------------------------------------------
echo AutoCAD-fas病毒移除(新懶人版)-1051104版
echo 請您確認AutoCAD已經關閉，不然可能導致接下來的動作無效。
echo -------------------------------------------------------
pause

taskkill /f /im acad.exe 2>nul

echo -------------------------------------------------------
echo 正在找尋C、D槽中的acad.fas, shxfont.fas, acad.lsp,  
echo acadapp.lsp,bakdwg.fas檔，請稍候……
echo (如果找到會將它列出並刪除)

FORFILES /P C:\ /S /M acad.fas 2>nul /C "cmd /c echo @path"
FORFILES /P D:\ /S /M acad.fas 2>nul /C "cmd /c echo @path"
FORFILES /P C:\ /S /M shxfont.fas 2>nul /C "cmd /c echo @path"
FORFILES /P D:\ /S /M shxfont.fas 2>nul /C "cmd /c echo @path"
FORFILES /P C:\ /S /M acad.lsp 2>nul /C "cmd /c echo @path"
FORFILES /P D:\ /S /M acad.lsp 2>nul /C "cmd /c echo @path"
FORFILES /P C:\ /S /M acadapp.lsp 2>nul /C "cmd /c echo @path"
FORFILES /P D:\ /S /M acadapp.lsp 2>nul /C "cmd /c echo @path"
FORFILES /P C:\ /S /M bakdwg.fas 2>nul /C "cmd /c echo @path"
FORFILES /P D:\ /S /M bakdwg.fas 2>nul /C "cmd /c echo @path"

echo 進行清除作業，請稍候……

FORFILES /P C:\ /S /M acad.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P D:\ /S /M acad.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P C:\ /S /M shxfont.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P D:\ /S /M shxfont.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P C:\ /S /M acad.lsp 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P D:\ /S /M acad.lsp 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P C:\ /S /M acadapp.lsp 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P D:\ /S /M acadapp.lsp 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P C:\ /S /M bakdwg.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"
FORFILES /P D:\ /S /M bakdwg.fas 2>nul /C "cmd /c del /F /A: H /A: R @path"

echo -------------------------------------------------------
echo C、D槽已經沒有acad.fas, shxfont.fas, acad.lsp,  
echo acadapp.lsp,bakdwg.fas檔了！
echo 請打開任意AutoCAD舊檔(如：*.dwg 或 *.dxf)，
echo 並查看是否仍會自動生成*.fas (該檔案可能為隱藏檔)，
echo 如果還是有，非常遺憾，請您另請高明。
echo -------------------------------------------------------

echo. & pause
