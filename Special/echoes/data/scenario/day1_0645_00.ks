[_tb_system_call storage=system/_day1_0645_00.ks]

[cm  ]
[bg  time="1000"  method="crossfade"  storage="sdniti014_19201080.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="morning0.ogg"  click="true"  ]
[tb_show_message_window  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;06:45"  face="JosefinSans-Bold"  edge="0x0313fa"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
*Encounter_Faidon_Early

[tb_start_text mode=1 ]
I stopped at a park to check my belongings,[p]
I'm quite bad with memorizing stuff, especially if it's in a long list.[p]
[_tb_end_text]

[jump  storage="day1_0645_00.ks"  target="*Nothing_Amiss"  ]
*Nothing_Amiss

[tb_start_text mode=1 ]
It's seems everything is still in order.[p]
[_tb_end_text]

[chara_show  name="Makiz"  time="1000"  wait="true"  storage="chara/4/Actor83_0_0_L00.png"  width="570"  height="673"  left="463"  top="0"  reflect="false"  ]
[wait  time="1000"  ]
[chara_mod  name="Makiz"  time="600"  cross="true"  storage="chara/4/Actor83_0_0_L07.png"  ]
[chara_move  name="Makiz"  anim="true"  time="300"  effect="easeInBounce"  wait="true"  left="-88"  top="0"  width="570"  height="673"  ]
[chara_hide  name="Makiz"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
...?[p]
I'm quite sure I didn't recall seeing that person in the neighborhood before, maybe she's a tourist?[p]
That's why she's stopping at the bus stop, isn't she?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
It's not until I take a closer look at the bus stop to see what's wrong.[p]
It seems the first bus is delayed, making my entire "getting-to-the-venue-earlier" idea moot.[p]
I can do nothing but sit down to wait for the bus.[p]
[_tb_end_text]

[jump  storage="day1_0700_00.ks"  target="*0730"  ]
