[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="logos.png"  ]
[wait  time="1000"  ]
[bg  storage="title.jpg"  ]
[tb_ptext_show  x="72"  y="41"  size="75"  color="0x080808"  time="1000"  text="Repeated"  face="JosefinSans-Bold"  anim="false"  edge="0xffffff"  shadow="undefined"  ]
[tb_ptext_show  x="258"  y="160"  size="75"  color="0x080808"  time="1000"  text="Echoes"  face="JosefinSans-Bold"  anim="false"  edge="0xffffff"  shadow="undefined"  ]
*title

[playbgm  volume="100"  time="1000"  loop="true"  storage="title.ogg"  click="true"  ]
[glink  color="theme_tyrano_05"  text="New&nbsp;Game"  x="690"  y="463"  size="24"  target="*start"  width=""  height=""  _clickable_img=""  ]
[glink  color="theme_tyrano_05"  text="Load&nbsp;Game"  x="610"  y="535"  size="24"  target="*load"  width=""  height=""  _clickable_img=""  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[tb_ptext_hide  time="1000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="pro_000.ks"  target=""  ]
[s  ]
*load

[tb_ptext_hide  time="1000"  ]
[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
