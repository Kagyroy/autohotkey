#UseHook

;無変換　
!p::Send, {vk1Dsc07B}

!8::!Left
!9::!Right

;Ctrl+W（ブラウザタブ閉じ）
^;::^w

;正常に動作
;LCtrl::LWin
;LWin::LCtrl

;Appskey::Ctrl

;vimの矢印移動動作
Alt & j::Send, {Down}
Alt & k::Send, {Up}
Alt & h::Send, {Left}
Alt & l::Send, {Right}
Alt & b::Send, {BS}
Alt & d::Send, {Del}

;Alt + Tab(+Shift)
Alt & i::AltTab
Alt & u::ShiftAltTab

;Ctrl + tab(+Shift)
^k::Tab
^j::+Tab

;Alt+F4
!o::!F4

;Escキーの代替
Alt & `;::Send, {Esc}

;for Fusion360 orbit
Ctrl & LShift::MButton
LShift & Ctrl::+MButton

;wheelup & down
!n::WheelDown
!m::WheelUp

;win+(up/down)
#'::right
#h::Left
#k::Up
;#l::Right ログアウトと被るため廃止


;win+t(task bar
#`;::#t

;文字選択
;!r::+Down
;!e::+Up
;!t::+Left
;!w::+Right

;-> for coffee script and <-
!.::InsertText("->")
!,::InsertText("<-")

!/::InsertText("・")

InsertText(Content)
{
    cb_bk = %ClipboardAll%
    Clipboard = %Content%
    Send, ^v
    Sleep, 150
    Clipboard = %cb_bk%
}

;右左クリック
<+Rshift::RButton
>+Lshift::LButton

;Mous move x, y, (speed, related)
!g::MouseMove, 100, 0, 0, R
!s::MouseMove, -100, 0, 0, R
!d::MouseMove, 0, -100, 0, R
!f::MouseMove, 0, 100, 0, R

;Ctrl+w
!w::msgbox, "!w"

;参考(メッセージボックスが出せる）
;b & z::msgbox, "b&z"

;未解決
;Ctrl & Alt::Send, {Windows}

;失敗例
;Leftと入力されるだけ
;Alt & j::Send, Left

;kが入力される
;Alt & j::k

;何も入力されない
;!j::Left
