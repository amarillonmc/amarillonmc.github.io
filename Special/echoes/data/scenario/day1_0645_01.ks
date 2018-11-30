[_tb_system_call storage=system/_day1_0645_01.ks]

[cm  ]
[bg  time="1000"  method="crossfade"  storage="sdniti014_19201080.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="morning0.ogg"  click="true"  ]
[tb_show_message_window  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;06:45"  face="JosefinSans-Bold"  edge="0xfa920a"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[jump  storage="day1_0645_01.ks"  target="*Encounter_Faidon_Early"  cond="f.chaotic>10"  ]
[tb_start_text mode=1 ]
I stopped at a park to check my belongings,[p]
I'm quite bad with memorizing stuff, especially if it's in a long list.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
It's seems everything is still in order.[p]
[_tb_end_text]

[jump  storage="day1_0645_01.ks"  target="*Nothing_Amiss"  ]
*Nothing_Amiss

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

[jump  storage="day1_0700_01.ks"  target="*0730"  ]
*Encounter_Faidon_Early

[tb_start_text mode=1 ]
My eyes is dragged to a unusual object in the park.[p]
It's clearly a telephone booth, but I kinda walk over this park every day, and never noticed a telephone booth was there.[p]
Not to mention that there's someone I know in the booth.[p]
[_tb_end_text]

[chara_show  name="Faidon"  time="1000"  wait="true"  storage="chara/5/Actor139_0_0_L03.png"  width="570"  height="704"  left=""  top=""  reflect="true"  ]
[tb_start_text mode=1 ]
#Faidon
...Yes, she is just out for a journey, should be back pretty soon...[p]
... ... alright. [p]
[_tb_end_text]

[chara_mod  name="Faidon"  time="600"  cross="true"  storage="chara/5/Actor139_0_0_L00.png"  ]
[tb_start_text mode=1 ]
#Faidon
... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
He hanged up the phone and heads towards an opposite direction.[p]
He didn't seemed to notice me, which is also very strange.[p]
[_tb_end_text]

[chara_hide  name="Faidon"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
Out of curiousity, I peeked inside the telephone booth.[p]
It's just your run-of-the-mill pay-phone, there's nothing magical or extraordinary on it.[p]
Maybe I just didn't notice it before?[p]
[_tb_end_text]

[jump  storage="day1_0645_01.ks"  target="*girl_stole_my_bag"  cond="f.chaotic>20"  ]
*girl_stole_my_bag

[tb_start_text mode=1 ]
At that time, I noticed a girl in a white one-piece, looks like a tourist or something.[p]
[_tb_end_text]

[chara_show  name="Makiz"  time="1000"  wait="true"  storage="chara/4/Actor83_0_0_L02.png"  width="570"  height="673"  ]
[tb_start_text mode=1 ]
She just walks towards me, then...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Strange White Girl
Do you have some time to spare? I have a question for you...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Yeah, tourist indeed.[p]
"Hm?"[p]
However, at that time, something unexpected happened.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="screenplay0.ogg"  click="true"  ]
[chara_mod  name="Makiz"  time="600"  cross="true"  storage="chara/4/Actor83_0_0_L04.png"  ]
[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[font  size="30"  color="0xffffff"  ]
[tb_start_text mode=1 ]
#Strange White Girl
My question: How can you be so dense!![p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#
Before I can react, the girl suddenly reached out and robbed my bag from my back, [p]
[_tb_end_text]

[chara_mod  name="Makiz"  time="600"  cross="true"  storage="chara/4/Actor83_0_0_L08.png"  ]
[tb_start_text mode=1 ]
#Strange White Girl
If you don't act properly, then I'll force you to![p]
Catch me if you can, or say goodbye to your screenplay scripts![p]
[_tb_end_text]

[chara_hide  name="Makiz"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
#
Shouting strange statements, the girl ran away towards the opposite direction of the park, in other words, if I would try to catch her, it'll take quite some time...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
While the girl speaks true that my screenplay script is in the bag, it's not that I'm worrying about.[p]
I can always use one of my Friends' scripts, and I can make lots of copies.[p]
The thing is that most of my personal stuff is in the bag, while they're not valuable, it'll be a hassle to replace every single one of them.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
So in other words, I got no choice but to run after her.[p]
[_tb_end_text]

[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;07:30"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[bg  time="1000"  method="fadeInLeft"  storage="sdniti016_19201080.jpg"  ]
[chara_show  name="Makiz"  time="1000"  wait="true"  storage="chara/4/Actor83_0_0_L03.png"  width="570"  height="673"  left="0"  top="0"  reflect="true"  ]
[wait  time="1000"  ]
[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[chara_hide  name="Makiz"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
#
"Stop there!"[p]
[_tb_end_text]

[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;08:45"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[bg  time="1000"  method="crossfade"  storage="sdniti025_19201080.jpg"  ]
[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[chara_show  name="Makiz"  time="1000"  wait="true"  storage="chara/4/Actor83_0_0_L00.png"  width="570"  height="673"  left="456"  top="0"  reflect="false"  ]
[wait  time="3000"  ]
[chara_hide  name="Makiz"  time="1000"  wait="true"  pos_mode="true"  ]
[playse  volume="100"  time="1000"  buf="0"  storage="CellRingtone_1.ogg"  ]
[tb_start_text mode=1 ]
#
"Shoot, where is she now..."[p]
Hm, a message?[p]
[_tb_end_text]

[stopse  time="1000"  buf="0"  ]
[tb_start_text mode=1 ]
#Annita
We're all here now, where are you?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
I stopped running and quickly typed my situation, then tell them to go rent the room on my behalf.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
Got it. We'll start without you then.[p]
Good luck catching that girl![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
This is Annita for you, even in situation like this, she won't ask about things that she cannot directly control.[p]
The good thing is that I don't need to stop for a long time explaining things. The bad thing is I can't expect any sort of help from her.[p]
I looked up, and the white-dressed girl is actually not too far away, as if she is also waiting for me.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
If this is a joke, clearly it's been too much.[p]
I keep on chasing.[p]
[_tb_end_text]

[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;11:00"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[bg  time="1000"  method="fadeInRight"  storage="sdniti026_19201080.jpg"  ]
[tb_start_text mode=1 ]
Eventually, I find myself in front of a residental building.[p]
My bag was hang on a postbox near it.[p]
There's no sign of the white girl.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="morning0.ogg"  click="true"  ]
[tb_start_text mode=1 ]
I stopped to catch my breath.[p]
Then I opened up the Map app to confirm my location.[p]
It seems that I run all the way backwards from downtown area, to a place that don't have convenient bus access, and it'll be at least a 2 hour bus ride.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Oh well...[p]
That derailed the plan a bit much.[p]
After getting the confirmation that Annita would be still waiting for me in the venue building, I started walking towards the nearest bus stop.[p]
[_tb_end_text]

[cm  ]
[jump  storage="day_1_reh_derail.ks"  target=""  ]
