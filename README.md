<div align="center">

## How to make screen savers\.


</div>

### Description

this shows you the correct way to make screen savers in vb.
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |2001-08-11 19:54:32
**By**             |[MudBlud](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/mudblud.md)
**Level**          |Intermediate
**User Rating**    |4.8 (19 globes from 4 users)
**Compatibility**  |VB 5\.0, VB 6\.0
**Category**       |[Coding Standards](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/coding-standards__1-43.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[How to mak244678112001\.zip](https://github.com/Planet-Source-Code/mudblud-how-to-make-screen-savers__1-26103/archive/master.zip)





### Source Code

<p><font color="#FF0000" size="5">How to make screen savers.</font></p>
<p><strong>Application Title: </strong></p>
<p>A Windows screen saver is nothing more that a regular Windows
executable file that has been renamed with the .scr extension. In
Visual Basic, when you are making the executable file, you will
need to set the Application Title in the Make EXE dialog box.
This Application Title MUST be set to &quot;SCRNSAVE title&quot;,
where title is the text you want displayed in the Control Panel
screen saver dropdown box. </p>
<p><strong>Command Line Arguments:</strong> </p>
<p>When Windows starts up a screen saver it calls it with the
&quot;/s&quot; argument, and when it wants to Setup the screen
saver it uses the &quot;/c&quot; argument.</p>
<p><strong>Screen Saver Running?:</strong></p>
<p>You must tell windows that the screen saver is running. if you
dont windows will run your screen saver more than once if you
leave your computer long enough. To do this you call:<br>
<font color="#000000">SystemParametersInfo(SPI_SETSCREENSAVEACTIVE,
0, ByVal 0&amp;, 0)</font></p>
<p><font color="#000000"><strong>Hiding the cursor:</strong></font></p>
<p><font color="#000000">When you make a screen saver you want to
hide the cursor right? after all, your suppost to be idle why
would you need one, it just makes your screen saver look bad. So
to hide it you use ShowCursor:<br>
ShowCursor (True) shows it and HideCursor (False) hides it, easy
huh!</font></p>
<p><font color="#000000"><strong>When do i go back to windows?:</strong></font></p>
<p><font color="#000000">When you move the mouse or hit a key</font>
the screen saver should close....ok<br>
you can detect these by _mousemove events and _keypress events.<br>
Also you need to call:<br>
SystemParametersInfo(SPI_SETSCREENSAVEACTIVE, 1, ByVal 0&amp;, 0)<br>
so windows knows that it can load a screensaver again.</p>
<p><strong>Now to the source code!!!!</strong></p>

