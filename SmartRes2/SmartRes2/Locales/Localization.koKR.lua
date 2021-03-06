-- Authors: Mattbnr
-- Localization file for Korean version of SmartRes2

local L = LibStub("AceLocale-3.0"):NewLocale("SmartRes2", "koKR")
if not L then return end


--@non-debug@
L["About"] = "정보"
L["About the author and SmartRes2"] = "SmartRes2 제작자 소개"
L["ADD_OUTPUT_KEY"] = "Add a random message to the table. %%p%% (optional) is you, %%t%% (mandatory) is your target. They can be in any order." -- Requires localization
L["Add to Random Table"] = "Add to Random Table" -- Requires localization
L["All dead units are being ressed."] = "모든 플레이어를 부활했습니다."
L["All dead units have released."] = "모든 사망자가 부활했습니다."
L["Alpha"] = "투명도"
L["And you thought the Scourge looked bad. In about 10 seconds, %%p%% knows %%t%% will want a comb, some soap, and a mirror."] = "And you thought the Scourge looked bad. In about 10 seconds, %%p%% knows %%t%% will want a comb, some soap, and a mirror." -- Requires localization
L["Auto Res Key"] = "자동 부활 키"
L["Background Colour"] = "배경 색상"
L["Bar Colour"] = "바 색상"
L["Bar Height"] = "Bar Height" -- Requires localization
L["Bar Width"] = "Bar Width" -- Requires localization
L["Border"] = "모서리"
L["Border Thickness"] = "테두리 두께"
L["Change the horizontal direction of the res bars"] = "부활 시전바를 수평 방향으로 바꿉니다"
L["Chat Output"] = "채팅 출력"
L["Chat output options"] = "채팅 출력 옵션"
L["Chat Output Type"] = "채팅 출력 유형"
L["Class Colours"] = "직업별 색상"
L["Control fonts on the res bars"] = "Control fonts on the res bars" -- Requires localization
L["Control the height of the res bars"] = "Control the height of the res bars" -- Requires localization
L["Control the width of the res bars"] = "Control the width of the res bars" -- Requires localization
L["Co-ordinated targetless Party/Raid wipe recovery. Evolved"] = [=[지정된 타겟없이 파티/공격대를 순식간에 복구시킵니다.
.toc 파일 내 Notes 예:Notes-koKR : <translation>]=]
L["Credits"] = "제작자"
L["Custom Message"] = "임의 메시지"
L["Duplicate Bar Colour"] = "중복 바 색상"
L["Duplicate Res Targets"] = "중복 부활 대상"
L["Enable SmartRes2"] = "Enable SmartRes2" -- Requires localization
L["Everybody is alive. Congratulations!"] = "모든 플레이어가 살아있습니다. 축하해요!"
L["Filthy peon! %%p%% has to resurrect %%t%%!"] = "Filthy peon! %%p%% has to resurrect %%t%%!" -- Requires localization
L["Fonts"] = "Fonts" -- Requires localization
L["Font Scale"] = "Font Scale" -- Requires localization
L["Font Style"] = "Font Style" -- Requires localization
L["Font Type"] = "Font Type" -- Requires localization
L["For ressing targets who have not released their ghosts"] = "무덤으로 이동하지 않은 대상의 부활"
L["FOR THE HORDE! FOR THE ALLIANCE! %%p%% thinks %%t%% should be more concerned about yelling FOR THE LICH KING! and prevents that from happening."] = "FOR THE HORDE! FOR THE ALLIANCE! %%p%% thinks %%t%% should be more concerned about yelling FOR THE LICH KING! and prevents that from happening." -- Requires localization
L["Gives you the pointer to click on corpses"] = "시체를 클릭할 포인터를 제공합니다"
L["Group"] = "그룹"
L["Grow Upwards"] = "바 위로 성장"
L["Guild"] = "길드"
L["Hide Anchor"] = "앵커 숨기기"
L["Horizontal Direction"] = "수평 방향"
L["In a world of resurrection spells, why are NPC deaths permanent? It doesn't matter, since %%p%% is making sure %%t%%'s death isn't permanent."] = "In a world of resurrection spells, why are NPC deaths permanent? It doesn't matter, since %%p%% is making sure %%t%%'s death isn't permanent." -- Requires localization
L["I would personally like to thank Jerry on the wowace forums for coding the new, smarter, resurrection function."] = "나는 개인적으로 새롭고, 영리한 부활 기능을 코딩해준 Wowace 포럼의 Jerry에게 감사하고 싶습니다."
L["Just to be silly, %%p%% tickles %%t%% until they get back up."] = "Just to be silly, %%p%% tickles %%t%% until they get back up." -- Requires localization
L["Key Bindings"] = "단축키"
L["Left click to lock/unlock the res bars. Right click for configuration."] = "좌클릭으로 부활 시전바 잠금/해제. 우클릭으로 설정창 열기."
L["Left to Right"] = "왼쪽에서 오른쪽으로"
L["Make the res bars grow up instead of down"] = "시전바를 위로 쌓습니다."
L["Manual Target Key"] = "수동 시전 키"
L["Many bugfixes and development help from Onaforeignshore"] = "Onaforeignshore로부터 많은 버그수정과 개발에 도움을 얻었습니다"
L["Massive kudos to Maia, Kyahx, and Poull for the original SmartRes. SmartRes2 was largely possible because of DathRarhek's LibResComm-1.0 so a big thanks to him."] = "Original SmartRes 제작자 Maia, Kyahx, 그리고 Poull에게 매우 감사합니다. SmartRes2는 DathRarhek의 LibResComm-1.0 때문에 가능했고, 그에게 큰 감사를 표합니다."
L["Middle click for Test Bars."] = "Middle click for Test Bars." -- Requires localization
L["Monochrome"] = "Monochrome" -- Requires localization
L["No fallen heroes! %%p%% needs %%t%% to march forward to victory!"] = "No fallen heroes! %%p%% needs %%t%% to march forward to victory!" -- Requires localization
L["Non-CTRA compatible res monitoring"] = "Non-CTRA compatible res monitoring" -- Requires localization
L["None"] = "없음"
L["Nothing"] = "Nothing" -- Requires localization
L["Nothing, outline, thick outline, or monochrome"] = "Nothing, outline, thick outline, or monochrome" -- Requires localization
L["Notify a resser they created a collision. Could get very spammy"] = "중복되어진 부활 시전자들을 알립니다. 매우 많은 메시지를 전송할 수 있습니다."
L["Off"] = [=[끄기
중복알림 스팸을 끄기위해]=]
L["Oh. My. God. %%p%% has to breathe life back into %%t%% AGAIN?!?"] = "Oh. My. God. %%p%% has to breathe life back into %%t%% AGAIN?!?" -- Requires localization
L["OK"] = "OK" -- Requires localization
L["Once again, %%p%% pulls %%t%% and their bacon out of the fire."] = "Once again, %%p%% pulls %%t%% and their bacon out of the fire." -- Requires localization
L["Options for the res bars"] = "부활 시전바 옵션"
L["Outline"] = "Outline" -- Requires localization
L["Party"] = "파티"
L["%%p%% doesn't think %%t%% is immortal, but after this res cast, it is close enough."] = "%%p%%는 %%t%%가 불사신이라고 생각하지 않지만, 이 시전이 끝나면 거의 가능해질거야."
L["%%p%% doesn't want the Lich King to get another soldier, so is bringing %%t%% back to life."] = "%%p%%은 리치 왕의 병사가 되는 걸 원치 않아, 그래서 %%t%%를 다시 살릴거야."
L["%%p%% grabs a stick. A-ha! %%t%% was only temporarily dead."] = "%%p%% grabs a stick. A-ha! %%t%% was only temporarily dead." -- Requires localization
L["%%p%% has to wake %%t%% from eternal slumber."] = "%%p%%가 %%t%%를 영원한 잠에서 깨웁니다."
L["Picks up res casts that are not broadcast via LibResComm or CTRA. This could have erroneous results, especially with mouseover or click casting"] = "Picks up res casts that are not broadcast via LibResComm or CTRA. This could have erroneous results, especially with mouseover or click casting" -- Requires localization
L["Pick the colour for collision (duplicate) res bars"] = "중복된 부활 시전바의 색상을 고릅니다"
L["Pick the colour for collision (player waiting for accept) res bars"] = "중복 바(수락 대기 플레이어) 색상을 고릅니다"
L["Pick the colour for non-collision (not a duplicate) res bar"] = "중복되지 않은 부활 시전바의 색상을 고릅니다"
L["%%p%% is bringing %%t%% back to life!"] = "%%p%%가 %%t%% 다시 살려낼거다!"
L["%%p%% is ending %%t%%'s dirt nap."] = "%%p%%가 %%t%%의 영면을 끝냅니다."
L["%%p%% is ressing %%t%%"] = "%%p%%가 %%t%%를 부활중입니다."
L["%%p%% knew %%t%% couldn't stay out of the fire. *Sigh*"] = "%%p%% knew %%t%% couldn't stay out of the fire. *Sigh*" -- Requires localization
L["%%p%% knows that %%t%% dying was just an excuse to see another silly random res message."] = "%%p%%는 %%t%%가 다른 부활 메시지를 보려고 죽는거 다 알아"
L["%%p%% knows %%t%% is faking. It was only a flesh wound!"] = "%%p%%는 %%t%%가 속이고 있다는 걸 알아. 그저 다친거잖아!"
L["%%p%% performs a series of lewd acts on %%t%%'s still warm corpse. Ew."] = "%%p%% performs a series of lewd acts on %%t%%'s still warm corpse. Ew." -- Requires localization
L["%%p%% prays over the corpse of %%t%%, and a miracle happens!"] = "%%p%%가 %%t%%의 시체에 기도를 합니다. 그리고 기적이 일어났습니다!"
L["%%p%% refuses to accept blame for %%t%%'s death, but kindly undoes the damage."] = "%%p%% refuses to accept blame for %%t%%'s death, but kindly undoes the damage." -- Requires localization
L["Prints a message to yourself whom you are ressing"] = "자신에게만 부활메시지를 표시합니다"
L["%%p%% thinks %%t%% should work on their Dodge skill."] = "%%p%% thinks %%t%% should work on their Dodge skill." -- Requires localization
L["%%p%% wonders about these stupid res messages. %%t%% should just be happy to be alive."] = "%%p%% wonders about these stupid res messages. %%t%% should just be happy to be alive." -- Requires localization
L["Raid"] = "공격대"
L["Random Res Messages"] = "임의의 부활 메시지"
L["Remaining units are away from keyboard."] = "Remaining units are away from keyboard." -- Requires localization
L["Remove messages from the table you no longer want"] = "Remove messages from the table you no longer want" -- Requires localization
L["Remove Random Messages"] = "Remove Random Messages" -- Requires localization
L["Res Bars"] = "부활 시전바"
L["Resize the res bars font"] = "Resize the res bars font" -- Requires localization
L["Right to Left"] = "오른쪽에서 왼쪽으로"
L["Say"] = "일반"
L["Scale"] = "크기"
L["Select a font for the text on the res bars"] = "Select a font for the text on the res bars" -- Requires localization
L["Select the border for the res bars"] = "부활 시전바의 모서리 선택"
L["Select the texture for the res bars"] = "부활 시전바의 텍스쳐를 선택합니다"
L["Self Notification"] = "자신에게 알림"
L["Set the Alpha for the res bars"] = "부활 바의 투명도 설정"
L["Set the keybindings"] = "단축키 설정"
L["Set the scale for the res bars"] = "부활 시전바 크기 설정"
L["Set the thickness of the res bars border"] = "부활 바 테두리의 두께 설정"
L["Show Bars"] = [=[바 보이기
부활 시전바에 이름을 표시]=]
L["Show bars for Rebirth"] = [=[환생 시전 바를 보입니다
드루이드 전투 부활 주문]=]
L["Show Battle Resses"] = "전투 부활 보이기"
L["Show Icon"] = "아이콘 보기"
L["Show or hide the icon for res spells"] = "부활 주문의 아이콘 표시/숨기기"
L["Show or hide the res bars. Everything else will still work"] = "부활 시전바를 표시하거나 숨깁니다. 모든 작동은 정상적으로 됩니다."
L["Show the test bars"] = "테스트 바 보기"
L["%s is ressing %s"] = "%s가 %s를 부활 중입니다."
L["Sleeping on the job? %%p%% is disappointed in %%t%%."] = "지금 자고 있는거야? %%p%%는 %%t%%에게 실망했어."
L["SmartRes2 Credits"] = "SmartRes2 크레딧"
L["SmartRes2 works best with LibResComm-1.0 version r51 or newer. Please update at wowace.com"] = "SmartRes2 works best with LibResComm-1.0 version r51 or newer. Please update at wowace.com" -- Requires localization
L["SmartRes2 would like you to know that %s is already being ressed by %s."] = "SmartRes2는 %s이 %s를 부활중임을 알려줍니다."
L["Somewhere, the Lich King is laughing at %%p%%, because he knows %%t%% will just die again eventually. More meat for the grinder!!"] = "Somewhere, the Lich King is laughing at %%p%%, because he knows %%t%% will just die again eventually. More meat for the grinder!!" -- Requires localization
L["Test Bars"] = "테스트 바"
L["Texture"] = "텍스쳐"
L["Thank you translators!"] = "Thank you translators!" -- Requires localization
L["The command \"cast\" will fire the smart Resurrection function. Usage: /sr cast or /smartres cast. Not necessary if you use the auto res key"] = "\"cast\" 명령어로 Smart Resurrection 기능을 실행합니다. 사용법: /sr cast 또는 /smartres cast. 자동 시전 키와 같은 기능"
L["There are no bodies in range to res."] = "부활 범위에 시체가 없습니다."
L["THICK_OUTLINE"] = "Thick Outline" -- Requires localization
L["Think that was bad? %%p%% proudly shows %%t%% the scar tissue caused by Hogger."] = "Think that was bad? %%p%% proudly shows %%t%% the scar tissue caused by Hogger." -- Requires localization
L["Toggles the anchor for the res bars so you can move them"] = "부활 시전바의 위치를 이동할 앵커를 토글합니다"
L["Turn random res messages on or keep the same message. Default is off"] = "랜덤 부활 메시지를 켜거나 같은 메시지를 표시합니다. 기본적으로 사용하지 않습니다"
L["Uncheck to disable Smartres2"] = "Uncheck to disable Smartres2" -- Requires localization
L["Unknown"] = "알 수없음"
L["Use class colours for the target on the res bars"] = "부활 시전바에 직업색상 사용"
L["Waiting Bar Colour"] = "대기 바 색상"
L["Where to print the res message. Raid, Party, Say, Yell, Guild, smart Group, or None"] = "메시지 출력 채널. 공격대, 파티, 일반, 외치기, 길드, Smart Group, 또는 없음."
L["Whisper"] = [=[귓속말
중복 시전자에게 귓속말]=]
L["Yell"] = "외치기"
L["You are not in a group."] = "파티나 공격대에 속해 있지 않습니다."
L["You are ressing %s"] = "당신은 %s을 부활 중입니다."
L["You don't have enough Mana to cast a res spell."] = "마나가 부족합니다."
L["Your message.  Use 'me' for yourself and 'you' for target"] = "당신의 부활 메시지. 'me'는 플레이어 이름, 'you'는 대상의 이름"

--@end-non-debug@