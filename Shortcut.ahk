GroupAdd, AgentRansack, ahk_exe AgentRansack.exe
GroupAdd, Chrome, ahk_exe chrome.exe
GroupAdd, Explorer, ahk_class CabinetWClass
GroupAdd, Explorer, ahk_class Clover_WidgetWin_0
GroupAdd, Firefox, ahk_exe firefox.exe
GroupAdd, IExplorer, ahk_class IEFrame
GroupAdd, Lync, ahk_class CommunicatorMainWindowClass
GroupAdd, Lync, ahk_class LyncConversationWindowClass
GroupAdd, SublimeText, ahk_exe sublime_text.exe
GroupAdd, Toad, ahk_exe toad.exe
GroupAdd, Outlook, ahk_class rctrl_renwnd32
GroupAdd, VisualStudio, ahk_exe devenv.exe
GroupAdd, Word, ahk_exe WINWORD.EXE
GroupAdd, Excel, ahk_exe EXCEL.EXE

; Ctrl + Alt + <key>
^!M::send, Starli0n@users.noreply.github.com
^!S::send, Starli0n

; Alt + <key>
!A::GroupActivate, AgentRansack, r
!C::GroupActivate, Chrome, r
!E::GroupActivate, Explorer, r
!F::GroupActivate, Firefox, r
!I::GroupActivate, IExplorer, r
!L::GroupActivate, Lync, r
!S::GroupActivate, SublimeText, r
!T::GroupActivate, Toad, r
!O::GroupActivate, Outlook, r
!V::GroupActivate, VisualStudio, r
!W::GroupActivate, Word, r
!X::GroupActivate, Excel, r


;##############################################################################
;### Firefox
;##############################################################################
#IfWinActive, ahk_exe firefox.exe

; Next Tab
; Win + Alt + Right => Ctrl + Tab
#!Right::Send ^{Tab}

; Previous Tab
; Win + Alt + Left => Ctrl + Shift + Tab
#!Left::Send ^+{Tab}

#IfWinActive
