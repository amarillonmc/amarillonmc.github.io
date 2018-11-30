[_tb_system_call storage=system/_Day2_tbc.ks]

[stopbgm  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="title.ogg"  click="true"  fadein="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.png"  ]
[tb_ptext_show  x="251"  y="206"  size="55"  color="0xffffff"  time="1000"  text="To&nbsp;Be&nbsp;Continued...!"  face="JosefinSans-Bold"  edge="undefined"  shadow="undefined"  anim="true"  fadeout="false"  wait="true"  in_effect="flash"  out_effect="fadeOut"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
Congrats.[p]
You reached the end of this Demo of "Repeated Echoes".[p]
Please look forward to the full version![p]
[_tb_end_text]

[tb_start_text mode=1 ]
Of course, you can play this 1st day however you wish by continuing past this screen and see how the story will pan out from different choices,[p]
Otherwise, it's safe to close the game.[p]
Thank You For Playing![p]
[_tb_end_text]

[cm  ]
[tb_ptext_hide  time="1000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[jump  storage="day1_init.ks"  target=""  ]
