#SingleInstance Force

; Load library
#Include komorebic.lib.ahk

;Komorebic
^+Backspace:: Stop()
!^+Enter:: RunWait("komorebic.exe start --ffm -c ~\repos\komorebi-config\komorebi.json", , "Hide")

;AutoHotKey
^!r:: Reload

; Focus windows
!h:: Focus("left")
!j:: Focus("down")
!k:: Focus("up")
!l:: Focus("right")
!+[:: CycleFocus("previous")
!+]:: CycleFocus("next")

; Move windows
^+h:: Move("left")
^+j:: Move("down")
^+k:: Move("up")
^+l:: Move("right")
!+Enter:: Promote()

; Stack windows
!Left:: Stack("left")
!Right:: Stack("right")
!Up:: Stack("up")
!Down:: Stack("down")
!;:: Unstack()
![:: CycleStack("previous")
!]:: CycleStack("next")

; Resize
!^+h:: ResizeAxis("horizontal", "decrease")
!^+l:: ResizeAxis("horizontal", "increase")
!^+j:: ResizeAxis("vertical", "increase")
!^+k:: ResizeAxis("vertical", "decrease")


; Manipulate windows
!Space:: ToggleFloat()
!+f:: ToggleMonocle()
!Enter:: ToggleMaximize()
!BackSpace:: Close()

; Window manager options
!+r:: Retile()
!p:: TogglePause()

; Layouts
!x:: FlipLayout("horizontal")
!y:: FlipLayout("vertical")

; Workspaces
!1:: FocusWorkspace(0)
!2:: FocusWorkspace(1)
!3:: FocusWorkspace(2)
!4:: FocusWorkspace(3)
!5:: FocusWorkspace(4)
!6:: FocusWorkspace(5)
!7:: FocusWorkspace(6)
!8:: FocusWorkspace(7)
!9:: FocusWorkspace(8)
!0:: FocusWorkspace(9)

; Move windows across workspaces
!+1:: MoveToWorkspace(0)
!+2:: MoveToWorkspace(1)
!+3:: MoveToWorkspace(2)
!+4:: MoveToWorkspace(3)
!+5:: MoveToWorkspace(4)
!+6:: MoveToWorkspace(5)
!+7:: MoveToWorkspace(6)
!+8:: MoveToWorkspace(7)
!+9:: MoveToWorkspace(8)
!+0:: MoveToWorkspace(9)