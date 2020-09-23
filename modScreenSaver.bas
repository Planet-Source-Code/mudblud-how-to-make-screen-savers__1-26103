Attribute VB_Name = "modScreenSaver"
'-----------------------------
'Made by Mike15
'-----------------------------
Public Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByRef lpvParam As Any, ByVal fuWinIni As Long) As Long

Public Const SPI_SETSCREENSAVEACTIVE = 17
Public Const SWP_NOSIZE = &H1
Public Const SWP_NOMOVE = &H2


Sub Main()
Select Case LCase(Command)
Case "/c" ' open settings form!
frmSettings.Show vbModal 'show the settings form
Case "/s" 'show screen saver!
SystemParametersInfo SPI_SETSCREENSAVEACTIVE, 0, ByVal 0&, 0 'Tell windows the screensaver is active!
ShowCursor False ' hide the cursor
frmSaver.Show vbSystemModal 'show the screen saver (vbSystemModal lets the forms keypress event system wide)
SetWindowPos frmSaver.hwnd, -1, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE 'stop the form from moving of being resized.
End Select
End Sub

Sub Quit()
ShowCursor True 'Turn the cursor back on
SystemParametersInfo SPI_SETSCREENSAVEACTIVE, 1, ByVal 0&, 0 'Tell windows the screensaver is unactive!
End ' ........end
End Sub
