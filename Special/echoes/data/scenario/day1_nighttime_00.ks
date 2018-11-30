[_tb_system_call storage=system/_day1_nighttime_00.ks]

[bg  time="1000"  method="crossfade"  storage="sdniti015n_19201080.jpg"  cross="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="night1.ogg"  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;Nighttime"  face="JosefinSans-Bold"  edge="0x0313fa"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_show_message_window  ]
*Chance_Encounter_1

*Nothing

[tb_start_text mode=1 ]
#
There's no use wandering in the city at night.[p]
So I decided to take the bus directly home.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti014n_19201080.jpg"  ]
*Chance_Encounter_2

[bg  time="1000"  method="crossfade"  storage="sdniti020n_19201080.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="TelephoneRing1.ogg"  loop="true"  ]
[tb_start_text mode=1 ]
As I head into my room, the telephone rang.[p]
Who could be phoning me at this time?[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti017n_19201080.jpg"  ]
[tb_start_text mode=1 ]
As I run for the phone, the ringing stopped.[p]
Almost as if it has a life of its own.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
It's probably some wrong number or prank call.[p]
I decided to ignore it and focus on my script.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti018n_19201080.jpg"  ]
[playse  volume="100"  time="1000"  buf="0"  loop="true"  storage="CellRingtone_1.ogg"  ]
[tb_start_text mode=1 ]
Weirdly, perhaps it's because an entire day of rehearsal has burnt me out, I find myself facing an empty document, unable to write anything.[p]
As I'm questioning my own ability, my cellphone rang.[p]
It's from Annita.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
I picked it up.[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#Annita
"Hi, I'll skip everything and cut to the question-"[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
I sense a sense of emergency in her voice, something that's rarely heard.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
"Have you encountered anything weird after we left?"[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Now this is a question coming from nowhere.[p]
However, I still answered:[p]
"Not that I can think of, Raul stayed late because he needs to use my staff elevator card key, and I'm now staring at this screen for half an hour and is unable to write anything."[p]
[_tb_end_text]

[tb_start_text mode=1 ]
There's a moment of slience.[p]
Then-[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
You shouldn't take "the lack of your inspiration" as a strange thing.[p]
It'll eventually run out if you write too much and don't get enough rest.[p]
Didn't you just finished an entire screenplay over the last two weeks? [p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Well, she's right.[p]
Perhaps I'm simply too tired.[p]
"If you put it that way, then there's nothing new."[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Somehow, I can felt that Annita's sense of emergency disappeared and returned to her usual slow going self.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
Just take some rest and your inspiration will come back.[p]
See you tomorrow, I guess.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
She hung up.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Well, if lack of sleep is a problem, better get enough sleep then.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti018n2_19201080.jpg"  ]
[tb_start_text mode=1 ]
I turned off the lights and headed to sleep.[p]
[_tb_end_text]

[tb_eval  exp="f.loop+=1"  name="loop"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[cm  ]
[tb_hide_message_window  ]
[stopbgm  time="1000"  fadeout="true"  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;End"  face="JosefinSans-Bold"  edge="0x0313fa"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[jump  storage="day1_init.ks"  target=""  ]
