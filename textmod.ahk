#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon ; No Icon , You can Stop from Task Manager
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^'::
ClipAll := clipboard ; A copy of clipboard
clipboard :=""	; Clears Clipboard
Sleep 50 ; Wait 50 ms
send ^c ; Press Ctrl + c
Sleep 50 ; Wait 50 ms 
Clip0 := clipboard
StringReplace, Clip0, Clip0, `r`n, %A_Space%, All  ; replaces enters with space
Sleep 50 ; Wait 50 ms                                                              
Send %Clip0%
Sleep 50 ; Wait 50 ms 
clipboard := ClipAll ; Recovers First Clipboard Value
RETURN

^Space::
ClipAll := clipboard ; A copy of clipboard
clipboard :="" ; Clears Clipboard
Sleep 50 ; Wait 50 ms 
send ^c ; Press Ctrl + c
Sleep 50 ; Wait 50 ms 
Clip0 := clipboard                                                               
StringUpper Clip0, Clip0, T ; First Letter Caps
Sleep 50 ; Wait 50 ms 
Send %Clip0%
Sleep 50 ; Wait 50 ms 
clipboard := ClipAll ; Recovers First Clipboard Value
RETURN




