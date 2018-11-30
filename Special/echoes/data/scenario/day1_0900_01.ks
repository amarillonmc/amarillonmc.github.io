[_tb_system_call storage=system/_day1_0900_01.ks]

[bg  time="1000"  method="crossfade"  storage="sdniti027_19201080.jpg"  ]
[tb_show_message_window  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;09:00"  face="JosefinSans-Bold"  edge="0xfa920a"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_start_text mode=1 ]
[chara_config talk_focus=brightness brightness_value=60][p]
#
As I walked out, I noticed someone just over the non-staff elevator room.[p]
It's Annita.[p]
[_tb_end_text]

[playbgm  volume="100"  time="1000"  loop="true"  storage="funny.ogg"  click="true"  ]
[chara_show  name="Annita"  time="1000"  wait="true"  storage="chara/1/Actor98_0_0_L04.png"  width="600"  height="673"  left="375"  top="0"  reflect="false"  ]
[tb_start_text mode=1 ]
#Annita
... ...[p]
zzz zzz[p]
... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
She seems to be fallen asleep standing up.[p]
Well, It's not surprising, I've dealt with it many times...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
However, it's true that due to her being so near the elevator door,[p]
she's blocking it from closing.[p]
While normal shoppers don't really use the elevator, I can already picture at least one or two of them looking at the elevator in confusion...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
So it's better to wake her up right here and right now.[p]
She can have her sleep all she wants, as long as we don't get shouted at by confused shoppers.[p]
Hmm, let's see.[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="day1_0900_01.ks"  size="20"  target="*Normal"  text="Shake&nbsp;her&nbsp;up"  x="215"  y="140"  width=""  height=""  _clickable_img=""  ]
[glink  color="theme_tyrano_05"  storage="day1_0900_01.ks"  size="20"  target="*Shock"  text="Try&nbsp;startle&nbsp;her&nbsp;with&nbsp;a&nbsp;shout."  x="350"  y="210"  width=""  height=""  _clickable_img=""  ]
[glink  color="theme_tyrano_05"  storage="day1_0900_01.ks"  size="20"  target="*Tail"  text="Try&nbsp;pulling&nbsp;on&nbsp;her&nbsp;tail."  x="600"  y="290"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Normal

[tb_start_text mode=1 ]
#
I tried to give her a nudge on the shoulders.[p]
[_tb_end_text]

[chara_move  name="Annita"  anim="true"  time="300"  effect="easeInBounce"  wait="true"  left="375"  top="0"  width="600"  height="673"  ]
[chara_move  name="Annita"  anim="true"  time="300"  effect="easeOutBounce"  wait="false"  left="400"  top="3"  width="600"  height="673"  ]
[tb_start_text mode=1 ]
#Annita
... ...?[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#
Well, guess that worked.[p]
[_tb_end_text]

[jump  storage="day1_0900_01.ks"  target="*Continue"  ]
*Shock

[tb_start_text mode=1 ]
#
Well, this worked before, and it's a surefire way, so excuse me...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
I inhaled deeply, then...[p]
[_tb_end_text]

[quake  time="200"  count="3"  hmax="10"  wait="true"  ]
[font  size="28"  color="0xffffff"  ]
[tb_start_text mode=1 ]
#
"WAAAUGH!!"[p]
[_tb_end_text]

[resetfont  ]
[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L02.png"  ]
[quake  time="180"  count="3"  hmax="10"  wait="true"  ]
[font  size="35"  color="0xffffff"  ]
[delay  speed="20"  ]
[tb_start_text mode=1 ]
#Annita
What happened! What's wrong?![p]
[_tb_end_text]

[delay  speed="30"  ]
[resetfont  ]
[tb_start_text mode=1 ]
#
It gave her such a shock that her glasses fall down on the floor, she scrambles to pick it up.[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L05.png"  ]
[tb_start_text mode=1 ]
#Annita
Oh, so it's just you, I thought it's once again some emergency...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
"Well, you're not a librarian here, don't get worked up that much."[p]
[_tb_end_text]

[tb_start_text mode=1 ]
I sighed, [p]
It's because you're so worked up that you fall to that prank over and over again![p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#Annita
Besides, I'm still playing my role of a librarian in today's rehearsal, right?[p]
For that reason alone, I need to stay alert.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
"Whatever floats your boat, I guess. At least the librarians in this world are not emergency responders."[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
So...[p]
[_tb_end_text]

[jump  storage="day1_0900_01.ks"  target="*Continue"  ]
*Tail

[tb_start_text mode=1 ]
#
Somehow I have this idea that will surely get her to wake up...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
I reached out with my hand, grabbed it and gave it a pull.[p]
[_tb_end_text]

[tb_eval  exp="f.karma-=5"  name="karma"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L06.png"  ]
[font  size="40"  color="0xffffff"  ]
[tb_start_text mode=1 ]
#Annita
AIEEEEEEEEEEEEH!!![p]
What was that for?![p]
[_tb_end_text]

[resetfont  ]
[tb_start_text mode=1 ]
#
"Just saw you somehow collapsing on the floor so I tried to do something, sorry."[p]
[_tb_end_text]

[tb_start_text mode=1 ]
I never thought she'll have that big a reaction, to be honest.[p]
Guess it's not the best idea.[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L03.png"  ]
[font  size="10"  color="0xffffff"  ]
[tb_start_text mode=1 ]
#Annita
... ...[p]
Well, guess it's probably better than getting myself crashed between those elevator doors...[p]
[_tb_end_text]

[resetfont  ]
[jump  storage="day1_0900_01.ks"  target="*Continue"  ]
*Continue

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L00.png"  ]
[tb_start_text mode=1 ]
#Annita
Did I fall asleep again?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
"You know, if you want to sleep, at least do it after you got in the room, you're blocking the elevator."[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L07.png"  ]
[tb_start_text mode=1 ]
#Annita
But isn't Raul going to be using it?[p]
At least that's what I told him yesterday...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
It's actually the staff elevator in the opposite direction, you see...[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L05.png"  ]
[tb_start_text mode=1 ]
#Annita
Ah, I get it all wrong! Gonna tell Raul about it.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
She took out her cellphone and began texting.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
"I'll just head to the staff only elevator to pick him up, it seems you have the messaging covered."[p]
"We're already slightly later than expected."[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L05.png"  ]
[tb_start_text mode=1 ]
#Annita
That's true...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
with that being said, I head towards the direction of the staff only elevator.[p]
[_tb_end_text]

[chara_hide  name="Annita"  time="1000"  wait="true"  pos_mode="true"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[cm  ]
[jump  storage="day1_rehersal_01.ks"  target=""  ]
