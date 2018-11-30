[_tb_system_call storage=system/_day1_init.ks]

[cm  ]
[tb_show_message_window  ]
[bg  time="1000"  method="crossfade"  storage="black.png"  ]
[tb_start_text mode=1 ]
#
... ... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
...[p]
[_tb_end_text]

[cm  ]
[jump  storage="day1_0600_00.ks"  target=""  cond="f.loop==0"  ]
[jump  storage="day1_0600_01.ks"  target=""  cond="f.loop>0"  ]
