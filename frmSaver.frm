VERSION 5.00
Begin VB.Form frmSaver 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12000
   LinkTopic       =   "Form1"
   ScaleHeight     =   9000
   ScaleWidth      =   12000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "frmSaver"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_KeyPress(KeyAscii As Integer)
Quit 'run the quit sub
End Sub

Private Sub Form_Load()
Me.CurrentX = (Me.Width - Me.TextWidth("SCREEN SAVER HERE!")) / 2
Me.CurrentY = (Me.Height - Me.TextHeight("SCREEN SAVER HERE!")) / 2
Me.Print "SCREEN SAVER HERE!"
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Quit 'run the quit sub
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Quit 'run the quit sub
End Sub
