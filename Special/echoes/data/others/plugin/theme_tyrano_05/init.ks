; ティラノスクリプト テーマプラグイン theme_tyrano_05
; 作者:こ・ぱんだ
; http://kopacurve.blog33.fc2.com/
;

[iscript]

//初期化
mp.font_color = mp.font_color || "0xD5C893"; 
mp.name_color = mp.name_color || "0xECDEA4";  
mp.frame_opacity = mp.frame_opacity || "255";  

[endscript]

;レイヤメッセージの削除
[font color="&mp.font_color"  ]
[deffont color="&mp.font_color" ]

[free name="chara_name_area" layer="message0"]
;[freeimage layer=message0]

[position layer=message0 width=960 height=210 top=440 left=0]
[position layer=message0 page=fore frame="../others/plugin/theme_tyrano_05/image/frame_message.png" margint="35" marginl="50" marginr="70" marginb="60" opacity=&mp.frame_opacity ]


;名前枠の設定
[ptext name="chara_name_area" layer="message0"  color="&mp.name_color"  size=24 x=50 y=442]
[chara_config ptext="chara_name_area"]

[macro name="add_theme_button"]

[hidemenubutton]
	
[button name="role_button" role="skip" graphic="../others/plugin/theme_tyrano_05/image/button/skip.png" enterimg="../others/plugin/theme_tyrano_05/image/button/skip2.png" x=35 y=610]

;	オート
[button name="role_button" role="auto" graphic="../others/plugin/theme_tyrano_05/image/button/auto.png" enterimg="../others/plugin/theme_tyrano_05/image/button/auto2.png" x=110 y=610]

;	セーブ
[button name="role_button" role="save" graphic="../others/plugin/theme_tyrano_05/image/button/save.png" enterimg="../others/plugin/theme_tyrano_05/image/button/save2.png" x=185 y=610]

;ロード
[button name="role_button" role="load" graphic="../others/plugin/theme_tyrano_05/image/button/load.png" enterimg="../others/plugin/theme_tyrano_05/image/button/load2.png" x=260 y=610]

;クイックセーブ
[button name="role_button" role="quicksave" graphic="../others/plugin/theme_tyrano_05/image/button/qsave.png" enterimg="../others/plugin/theme_tyrano_05/image/button/qsave2.png" x=335 y=610]

;クイックロード
[button name="role_button" role="quickload" graphic="../others/plugin/theme_tyrano_05/image/button/qload.png" enterimg="../others/plugin/theme_tyrano_05/image/button/qload2.png" x=410 y=610]

;バックログ
[button name="role_button" role="backlog" graphic="../others/plugin/theme_tyrano_05/image/button/log.png" enterimg="../others/plugin/theme_tyrano_05/image/button/log2.png" x=485 y=610]

;メッセージウィンドウ非表示
[button name="role_button" role="window" graphic="../others/plugin/theme_tyrano_05/image/button/close.png" enterimg="../others/plugin/theme_tyrano_05/image/button/close2.png" x=560 y=610]

;フルスクリーン切替
[button name="role_button" role="fullscreen" graphic="../others/plugin/theme_tyrano_05/image/button/screen.png" enterimg="../others/plugin/theme_tyrano_05/image/button/screen2.png" x=635 y=610]

;メニュー呼び出し（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="../others/plugin/theme_tyrano_05/image/button/menu.png" enterimg="../others/plugin/theme_tyrano_05/image/button/menu2.png" x=710 y=610]

;コンフィグ（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="../others/plugin/theme_tyrano_05/image/button/sleep.png" enterimg="../others/plugin/theme_tyrano_05/image/button/sleep2.png" x=785 y=610 storage="../others/plugin/theme_tyrano_05/config.ks"]

;タイトルに戻る
[button name="role_button" role="title" graphic="../others/plugin/theme_tyrano_05/image/button/title.png" enterimg="../others/plugin/theme_tyrano_05/image/button/title2.png" x=860 y=610]


[endmacro]


;;;;;;;;;;;;;;セーブ画面変更。

;システムで利用するHTMLの変更。
[sysview type="save" storage="./data/others/plugin/theme_tyrano_05/html/save.html" ]
[sysview type="load" storage="./data/others/plugin/theme_tyrano_05/html/load.html" ]
[sysview type="backlog" storage="./data/others/plugin/theme_tyrano_05/html/backlog.html" ]
[sysview type="menu" storage="./data/others/plugin/theme_tyrano_05/html/menu.html" ]

@loadcss file="./data/others/plugin/theme_tyrano_05/theme_tyrano_05.css"


[return]




