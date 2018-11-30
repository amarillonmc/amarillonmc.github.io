[_tb_system_call storage=system/_preview.ks ]

[mask time=10]
[mask_off time=10]
[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="drama0.ogg"  ]
[tb_show_message_window  ]
[bg  time="1000"  method="crossfade"  storage="sdniti028y_19201080.jpg"  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;16:15"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_start_text mode=1 ]
[chara_config talk_focus=brightness brightness_value=60][p]
#
When I arrived at the venue, the only ones there are Annita and Raul.[p]
[_tb_end_text]

[chara_show  name="Annita"  time="1000"  wait="true"  storage="chara/1/Actor98_0_0_L02.png"  width="600"  height="673"  left=""  top=""  reflect="true"  ]
[chara_show  name="Raul"  time="1000"  wait="true"  storage="chara/6/Actor125_0_0_L02.png"  width="570"  height="673"  left="436"  top="0"  reflect="false"  ]
[tb_start_text mode=1 ]
#Annita
...You okay? You looks like someone who just finished a marathon run![p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L00.png"  ]
[tb_start_text mode=1 ]
#Annita
There...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
She walked closer and place her hand on my shoulder.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
Feeling better now?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Well, when she puts it that way,[p]
"Yeah, sorry for missing today's rehearsal, Faidon is gone, eh?"[p]
[_tb_end_text]

[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L04.png"  ]
[tb_start_text mode=1 ]
#Raul
He just doesn't want to waste time on waiting. Nevertheless, we went through most of the script, thanks to his planning.[p]
Make sure you thank him next time.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
No hard feelings, okay?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
"So why are you two still here?"[p]
If things are finished, they have all the reason to leave without waiting for me.[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L03.png"  ]
[tb_start_text mode=1 ]
#Annita
Thing is, I have a question for you.[p]
[_tb_end_text]

[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#Raul
Same here. And I think for the first question, we're thinking the same thing.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
Can you describe the girl who robbed you? Being as specific as possible.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
I tried to recall, since she's wearing a set of very noticable clothes, [p]
And I described the appearence of the girl.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
The two fall in slience.[p]
Then, Raul nodded.[p]
[_tb_end_text]

[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L02.png"  ]
[tb_start_text mode=1 ]
#Raul
I'm pretty sure we're both going to tell you something very different, but knowing who's behind today's incident, setting here waiting for both answers aren't something feasible...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
So you mean you know the identity of the girl?[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#Annita
Meanwhile, I know what's happening to you that caused the girl to gun for you.[p]
but either way, we need to solve this tonight, or things would only become worse.[p]
Sorry for the lack of explanation.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
So, Raul has a better idea on the identity of the girl, and Annita has a better idea on the reason why the girl is coming for me.[p]
and neither parties have time to wait for the other to talk...[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="day_1_reh_derail.ks"  size="20"  text="Listen&nbsp;to&nbsp;Annita's&nbsp;explanation."  x="75"  y="300"  width=""  height=""  _clickable_img=""  target="*D1_Annita"  ]
[glink  color="theme_tyrano_05"  storage="day_1_reh_derail.ks"  size="20"  text="Listen&nbsp;to&nbsp;Raul's&nbsp;explanation."  x="565"  y="300"  width=""  height=""  _clickable_img=""  target="*D1_Raul"  ]
[s  ]
*D1_Annita

[tb_eval  exp="f.chaotic-=5"  name="chaotic"  cmd="-="  op="t"  val="5"  val_2="undefined"  ]
[tb_eval  exp="f.refer+=1"  name="refer"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L08.png"  ]
[tb_start_text mode=1 ]
#Raul
Okay then, he's all yours. As for me, I got a fairy to catch.[p]
Never imagine a job like that would be coming up after all these years...[p]
[_tb_end_text]

[chara_hide  name="Raul"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
#
With those cryptic words,[p]
Raul stormed out of the room.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  fadein="true"  click="true"  storage="suspense0.ogg"  ]
[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L00.png"  ]
[tb_start_text mode=1 ]
#Annita
Let's sort your problem out then, and leave Raul to do his thing.[p]
You see, just now while I touched you, I sensed a time anomaly on you.[p]
We Beasts have the ability to sense and heal others' life force.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
but I cannot heal your condition on my own.[p]
Since you're technically and physically unharmed.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
Me, an anomaly?[p]
Without letting me ask anything, she continues on as if it's her own life on the line[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L04.png"  ]
[tb_start_text mode=1 ]
#Annita
In layman's terms, you are not living in the same stream as us.[p]
Each night, when the clock strikes 12, you'll not advance.[p]
Instead, you will be twisted back to the beginning of the day, with minimal memories intact.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
What's more, we don't know exactly how many times this had happened...[p]
While you won't have much memories, we all know that even the smallest sand can slowly gather up to a tower.[p]
One day, your mind will collapse from all the memory residue [p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
That's why we'll attempt to solve this right here, right now. Before you and me forgets the entire thing and had to start all over again![p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L02_n.png"  ]
[tb_start_text mode=1 ]
#
She took off her glasses and placed it on the ground, then quickly walked a circle.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Annita
"In the name of Annita Kritikou, I hereby force a summon of Kyriake, the fairy of priorties, to our Noian realm!"[p]
Sorry, summoning without a enchantment circle may take a while, but we don't have time to grab it from my home.[p]
Plus, Kyriake is my friend, it ought to be easier...[p]
[_tb_end_text]

[quake  time="300"  count="5"  hmax="50"  wait="true"  vmax="50"  ]
[tb_start_text mode=1 ]
#
Before I can say anything,[p]
the entire room shakes violently, as a shadow emerges from the ground.[p]
As everything cleared, another girl with a pair of similar ears appeared in the room.[p]
[_tb_end_text]

[chara_show  name="Kyriake"  time="1000"  wait="true"  storage="chara/3/Actor97_0_0_L06.png"  width="600"  height="673"  left="426"  top="0"  reflect="false"  ]
[tb_start_text mode=1 ]
#Kyriake
Owwwwww, it hurts. Annita, what are you doing?[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L02_n.png"  ]
[tb_start_text mode=1 ]
#Annita
Asking for help, of course. We need you to get rid of my friend's troublesome time anomaly.[p]
[_tb_end_text]

[chara_mod  name="Kyriake"  time="600"  cross="true"  storage="chara/3/Actor97_0_0_L08.png"  ]
[tb_start_text mode=1 ]
#Kyriake
Yes, that I can do, I'll just arrange the priorties of this guy's status...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
She started to look directly at me, her eyes shine a bright light.[p]
[_tb_end_text]

[chara_mod  name="Kyriake"  time="600"  cross="true"  storage="chara/3/Actor97_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#Kyriake
Yes, this should be easy to fix.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
As she took out a oversized pen from her pocket, and stop it closely in front of me.[p]
Then, she just lifted the pen up...[p]
and appearently, nothing happened.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Kyriake
The deed is done. I've extracted the anomaly.[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L02.png"  ]
[tb_start_text mode=1 ]
#Annita
So we'll wait until midnight and see if something happens?[p]
[_tb_end_text]

[chara_mod  name="Kyriake"  time="600"  cross="true"  storage="chara/3/Actor97_0_0_L03.png"  ]
[tb_start_text mode=1 ]
#Kyriake
That's the general idea. Though I don't know what exactly happened with this guy...[p]
...care to explain?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
So, I described what I encountered this morning again. The two listened to my story and Kyriake even pulled out a notepad, as if recording something.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti028n_19201080.jpg"  ]
[tb_start_text mode=1 ]
#
Soon, it's getting late, as we waited for midnight to arrive...[p]
However...[p]
[_tb_end_text]

[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;23:53"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_start_text mode=1 ]
#
What happened is beyond our imagination.[p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[chara_show  name="Faidon"  time="1000"  wait="true"  storage="chara/5/Actor139_0_0_L08.png"  width="570"  height="704"  left=""  top=""  reflect="false"  ]
[tb_start_text mode=1 ]
Faidon, of all people, rushes into the room.[p]
[_tb_end_text]

[chara_mod  name="Faidon"  time="600"  cross="true"  storage="chara/5/Actor139_0_0_L06.png"  ]
[tb_start_text mode=1 ]
#Faidon
What have you done? Now everything is too late![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#
He scrambled to the front of the room, and opened up the projecter there.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
There's a special broadcast going on.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#TV Broadcast
We interrupt our scheduled program to broadcast this breaking news:[p]
Just now, we have confirmation that there was a accident invloving a out-of-control railway car just outside the city.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#TV Broadcast
The situation was dire, due to that the car fall straight to the caverns below the mountain tracks, it seems that the survival chance of the passengers, including The Logos, a well-known Turian Sorcery-Charms dealer-[p]
[_tb_end_text]

[chara_mod  name="Faidon"  time="600"  cross="true"  storage="chara/5/Actor139_0_0_L02.png"  ]
[tb_start_text mode=1 ]
#Faidon
That's my parents for you, only because you guys don't want to be entirely in the dark, all my preparation has gone to smoke![p]
[_tb_end_text]

[chara_hide  name="Faidon"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
#
Shouting those broken words, Faidon rushed out of the room, just as how he stormed in in the first place. Leaving us looking at each other, trying to digest the news.[p]
[_tb_end_text]

[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;2&nbsp;00:00"  face="JosefinSans-Bold"  edge="0x0026fa"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_start_text mode=1 ]
#
Well, the anomaly appearently is gone.[p]
However, it seems to be come with a heavy price...[p]
[_tb_end_text]

[stopbgm  time="1000"  ]
[jump  storage="Day2_tbc.ks"  target=""  ]
*D1_Raul

[tb_eval  exp="f.chaotic-=5"  name="chaotic"  cmd="-="  op="t"  val="5"  ]
[tb_eval  exp="f.refer+=1"  name="refer"  cmd="+="  op="t"  val="1"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="suspense0.ogg"  ]
[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L01.png"  ]
[tb_start_text mode=1 ]
#Raul
Okay, if that's what you want. We'll set out to the place where you last see the girl.[p]
[_tb_end_text]

[chara_mod  name="Annita"  time="600"  cross="true"  storage="chara/1/Actor98_0_0_L00.png"  ]
[tb_start_text mode=1 ]
#Annita
I wish you good luck then, I have a fairy to talk with.[p]
[_tb_end_text]

[chara_hide  name="Annita"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="1000"  method="crossfade"  storage="sdniti015n_19201080.jpg"  ]
[chara_mod  name="Raul"  time="600"  cross="true"  storage="chara/6/Actor125_0_0_L04.png"  ]
[tb_start_text mode=1 ]
#Raul
You know, I wasn't always an actor.[p]
I work undercover to make sure the fairies of our world are not causing mischief - and here we have just the one, Makiz, playing a bad trick on you.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Raul
While Annita would help you dispel whatever that fairy inflict on you, my gut feelings say that we just talk to the fairy by going towards their base of operations.[p]
[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="sdniti026an_19201080.jpg"  ]
[tb_ptext_show  x="1"  y="1"  size="30"  color="0xffffff"  time="1000"  text="Day&nbsp;1&nbsp;23:30"  face="JosefinSans-Bold"  edge="0xff0000"  shadow="undefined"  anim="true"  fadeout="true"  wait="true"  in_effect="pulse"  out_effect="bounceOut"  ]
[tb_start_text mode=1 ]
#
As we approach the residental building I last saw the girl, there seems to be something very wrong with it.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
The entrance of the building is barricaded, and police lines are being held up. [p]
[_tb_end_text]

[tb_start_text mode=1 ]
#Makiz's Voice
Oops, guess you guys know too much.[p]
[_tb_end_text]

[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[tb_start_text mode=1 ]
#
Before we can react, I felt myself being stabbed by something, and heard Raul shouting something, and then, another familiar shadow....[p]
Then, I drifted into nothingless.[p]
[_tb_end_text]

[cm  ]
[tb_hide_message_window  ]
[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="Day2_tbc.ks"  target=""  ]
