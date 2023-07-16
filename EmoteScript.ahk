#SingleInstance Force

MsgBox, 4, , Have you read the rules of the server you are currently playing on?`nSome servers disallow the usage of Macros. `n`nDo you want to Continue? ; Have you read the Rules?
IfMsgBox No
    ExitApp

IfMsgBox Yes
Gui, Color, White
Gui, Add, Text,, Which Emote do you want to send?
Gui, Add, DropDownList, x20 y42 w114 vEmoteList, Aflap||Airguitar|Annoyed|Blink|Blink_r|Blush|Bow|Burp|Choke|Chuckle|Circle|Clap|Clear|Click|Collapse|Cough|Cross|Cry|Dance|Dap|Deathgasp|Drool|Etwitch|Exhale|Eyebrow|Eyeroll|Faint|Fart|Fingergun|Flap|Flip|Frown|Gag|Gasp|Giggle|Glare|Grimace|Grin|Groan|Grumble|Handshake|Help|Highfive|Hiss|Huff|Hug|Hum|Inhale|Jump|Kiss|Laugh|Look|Me|Moan|Mumble|Nod|Offer|Pale|Point|Pout|Raise|Salute|Scowl|Scream|Shake|Shiver|Shrug|Sigh|Signal|Sit|Slap|Smile|S‌​mug|Snap|Snap2|Snap3|Sneeze|Sniff|Snore|Spin|Stare|Stretch|Sulk|Surrender|Sway‌​|Sweatdrop|Thumbsdown|Thumbsup|Tremble|Twitch|Twitch_s|Wag|Wave|Whimper|Whistle|Wink|Wsmile|Yawn
Gui, Add, Button, x20 y70 w150 Default, Execute
IniRead, qemote1, QuickEmotes.ini, QuickEmotes, Quick-Emote-1 ;
IniRead, qemote2, QuickEmotes.ini, QuickEmotes, Quick-Emote-2 ; }
IniRead, qemote3, QuickEmotes.ini, QuickEmotes, Quick-Emote-3 ;   } - Loading Of Settings...
IniRead, qemote4, QuickEmotes.ini, QuickEmotes, Quick-Emote-4 ; }
IniRead, qemote5, QuickEmotes.ini, QuickEmotes, Quick-Emote-5 ;
IniRead, aot, QuickEmotes.ini, QuickEmotes, AoT


;----- Quick Emote Buttons

Gui, Add, Button, x20 y100 w90, Quick Emote 1   ;--Quick Emote Button 1
Gui, Add, Text, x115 y103,< %qemote1%

Gui, Add, Button, x20 y120 w90, Quick Emote 2   ;--Quick Emote Button 2
Gui, Add, Text, x115 y123,< %qemote2%

Gui, Add, Button, x20 y140 w90, Quick Emote 3   ;--Quick Emote Button 3
Gui, Add, Text, x115 y143,< %qemote3%

Gui, Add, Button, x20 y160 w90, Quick Emote 4   ;--Quick Emote Button 4
Gui, Add, Text, x115 y163,< %qemote4%

Gui, Add, Button, x20 y180 w90, Quick Emote 5   ;--Quick Emote Button 5
Gui, Add, Text, x115 y183,< %qemote5%

Gui, Add, Button, x20 y210 w70, Settings        ;--Settings Button
Gui, Add, Button, x100 y210 w70, Reload         ;--Reload Button

if (aot = "true")
    {
        Gui, +AlwaysOnTop 
        Gui, Show
    }
elseif (aot = "false")
    {
        Gui, Show
    }
return

ButtonExecute:
    GuiControlGet, selectedemote,, EmoteList

    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%selectedemote%
    sendinput, {enter}
return
ButtonQuickEmote1:
    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%qemote1%
    sendinput, {enter}
return
ButtonQuickEmote2:
    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%qemote2%
    sendinput, {enter}
return
ButtonQuickEmote3:
    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%qemote3%
    sendinput, {enter}
return
ButtonQuickEmote4:
    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%qemote4%
    sendinput, {enter}
return
ButtonQuickEmote5:
    sendinput, {ALT down}
    sleep 10
    sendinput, {ESCAPE down}
    sleep 100
    sendinput, {ALT up}
    sleep 10
    sendinput, {ESCAPE up}
    sleep 100
    sendinput, {t}
    sleep 200
    sendinput, *%qemote5%
    sendinput, {enter}
return
ButtonSettings:

Gui, Hide
Gui, New
Gui, Add, Text, x17 y38 w120 h20, Emote 1
Gui, Add, Text, x17 y68 w120 h20, Emote 2
Gui, Add, Text, x17 y98 w120 h20, Emote 3
Gui, Add, Text, x17 y128 w120 h20, Emote 4
Gui, Add, Text, x17 y158 w120 h20, Emote 5
Gui, Add, Text, x17 y188 w170 h20, Always on Top True/False


Gui, Add, Edit, x80 y38 w100 h20 vEmote1, %qemote1%
Gui, Add, Edit, x80 y68 w100 h20 vEmote2, %qemote2%
Gui, Add, Edit, x80 y98 w100 h20 vEmote3, %qemote3%
Gui, Add, Edit, x80 y128 w100 h20 vEmote4, %qemote4%
Gui, Add, Edit, x80 y158 w100 h20 vEmote5, %qemote5%
Gui, Add, Edit, x150 y188 w40 h20 vAot, %aot%

Gui, Add, Button, x17 y215 w170 h20, Save
Gui, Show
return
ButtonSave:
Gui, Submit
If (emote1 != "")
{
    IniWrite, %emote1%, QuickEmotes.ini, QuickEmotes, Quick-Emote-1
}
If (emote2 != "")
{
    IniWrite, %emote2%, QuickEmotes.ini, QuickEmotes, Quick-Emote-2
}
If (emote3 != "")
{
    IniWrite, %emote3%, QuickEmotes.ini, QuickEmotes, Quick-Emote-3
}
If (emote4 != "")
{
    IniWrite, %emote4%, QuickEmotes.ini, QuickEmotes, Quick-Emote-4
}
If (emote5 != "")
{
    IniWrite, %emote5%, QuickEmotes.ini, QuickEmotes, Quick-Emote-5
}
If (aot != "true" or "false")
{
    IniWrite, %aot%, QuickEmotes.ini, QuickEmotes, aot
}
    MsgBox, Please Re-Open the Script.
    ExitApp
    Return

ButtonReload:
reload

GuiClose:
ExitApp