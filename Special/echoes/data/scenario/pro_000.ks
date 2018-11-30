[_tb_system_call storage=system/_pro_000.ks]

[cm  ]
[bg  time="1000"  method="crossfade"  storage="title.jpg"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="3questions.ogg"  click="true"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#???
... ... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
... ...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
Hm? Now this is new.[p]
You can hear me, correct?[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="40"  text="Yes"  x="175"  y="250"  width=""  height=""  _clickable_img=""  target="*Heard_Boss"  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="40"  text="No..?"  x="550"  y="250"  width=""  height=""  _clickable_img=""  target="*Ignore_Boss"  ]
[s  ]
*Heard_Boss

[tb_start_text mode=1 ]
#???
Welcome, my invisible audience![p]
No worries, You cannot see me, meaning I cannot see you as well, we're technically not interacting with each other.[p]
Maybe you don't really exist and is one of my wildly run imaginations, who knows...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
But it's always good to have company.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
Now then, I do have something that's on my mind for some time...[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
So I ask of you, my fragments of imagination...[p]
Do you believe in "the Butterfly Effect"?[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  text="Yes.&nbsp;Our&nbsp;life&nbsp;is&nbsp;formed&nbsp;by&nbsp;small&nbsp;instances&nbsp;of&nbsp;unrelated&nbsp;events."  x="90"  y="150"  width=""  height=""  _clickable_img=""  target="*Q1_Yes"  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  text="No.&nbsp;How&nbsp;could&nbsp;small&nbsp;factors&nbsp;change&nbsp;that&nbsp;much?"  x="260"  y="240"  width=""  height=""  _clickable_img=""  target="*Q1_No"  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  text="I'm&nbsp;sorry,&nbsp;but&nbsp;what's&nbsp;the&nbsp;Butterfly&nbsp;Effect?"  x="470"  y="330"  width=""  height=""  _clickable_img=""  target="*Butterfly_Effect_Explaination"  ]
[s  ]
*Butterfly_Effect_Explaination

[tb_start_text mode=1 ]
#???
Ah, no worries.[p]
You see, the Butterfly Effect refers to... *ahem*[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#The Butterfly Effect
...the sensitive dependence on initial conditions in which a small change in one state of a deterministic nonlinear system can result in large differences in a later state.[p]
In other words, everything affects everything, just like a butterfly splashing its wings in South America would probably cause a storm in the Pacific Ocean.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
With that being said, would you agree that every single event, no matter how small, may be the cause of something much greater?[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  text="Well,&nbsp;I&nbsp;think&nbsp;so."  x="230"  y="180"  width=""  height=""  _clickable_img=""  target="*Q1_Yes"  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  text="That&nbsp;isn't&nbsp;right."  x="510"  y="280"  width=""  height=""  _clickable_img=""  target="*Q1_No"  ]
[s  ]
*Q1_Yes

[tb_eval  exp="f.chaotic+=5"  name="chaotic"  cmd="+="  op="t"  val="5"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#???
Is that so...[p]
Interesting how those little events interact, right?[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*Q2"  ]
*Q1_No

[tb_start_text mode=1 ]
#???
So that's what you think, eh?[p]
Got it.[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*Q2"  ]
*Q2

[tb_start_text mode=1 ]
#???
So, next question...[p]
Do you believe Luck would sometimes utterly destroy or made a person?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
I'm talking about big events that may leave a permanent mark on one's life, think carefully.[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  target="*Q2_Yes"  text="I&nbsp;agree&nbsp;with&nbsp;that."  x="230"  y="180"  width=""  height=""  _clickable_img=""  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  target="*Q2_No"  text="There's&nbsp;no&nbsp;such&nbsp;things&nbsp;as&nbsp;luck."  x="420"  y="290"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Q2_Yes

[tb_eval  exp="f.chaotic+=10"  name="chaotic"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#???
Of course, if people work hard, they'll have a better chance to succeed - until some unforseenable events that ruins their day;[p]
While others just won their lottery![p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
Ah, I mean, don't relay on it too much, okay?[p]
It can help you achieve your 110%, but that require you do your 100%, you know the drift, right?[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*Q3"  ]
*Q2_No

[tb_eval  exp="f.refer+=1"  name="refer"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#???
Ah, you're the type that believes in yourself over the so-called destiny,[p]
that's a very nice mindset to have.[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*Q3"  ]
*Q3

[tb_start_text mode=1 ]
#???
Continuing on...[p]
Oh, don't worry, the next question is the last, though it's also quite big and is the one I'm thinking on my mind for some time.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
Now then, do you think people would really understand each other?[p]
In other words, how easy can our feelings be expressed to others?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
I understand this question runs deep, just trust your gut on this one.[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  target="*Q3_Yes"  text="Empathy&nbsp;is&nbsp;not&nbsp;a&nbsp;superpower,&nbsp;you&nbsp;know."  x="150"  y="150"  width=""  height=""  _clickable_img=""  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="20"  target="*Q3_No"  text="People&nbsp;could&nbsp;never&nbsp;understand&nbsp;each&nbsp;other!"  x="410"  y="230"  width=""  height=""  _clickable_img=""  ]
[s  ]
*Q3_Yes

[tb_eval  exp="f.refer+=1"  name="refer"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_eval  exp="f.karma+=10"  name="karma"  cmd="+="  op="t"  val="10"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#???
Yes, everything can be sorted out peacefully as long as we have someone who's willing to talk and someone who's willing to act, right?[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
Okay then.[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*000_end"  ]
*Q3_No

[tb_start_text mode=1 ]
#???
Hmm..[p]
I'll not comment on that answer.[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*000_end"  ]
*Ignore_Boss

[tb_start_text mode=1 ]
#???
Weird, I'm quite sure I felt somebody here, [p]
maybe it was just my imagination.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
#???
But I guess it's safer to ask again - who knows what they're thinking...[p]
If anyone is out there, and can hear me, I demand a reply.[p]
[_tb_end_text]

[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="40"  text="Sorry..?"  x="175"  y="250"  width=""  height=""  _clickable_img=""  target="*Heard_Boss_2"  ]
[glink  color="theme_tyrano_05"  storage="pro_000.ks"  size="40"  text="...&nbsp;..."  x="550"  y="250"  width=""  height=""  _clickable_img=""  target="*Ignore_Boss_2"  ]
[s  ]
*Heard_Boss_2

[tb_start_text mode=1 ]
#???
Hey, decided to come out from hiding?[p]
Don't worry, I won't bite. I know you can't see me, but trust me on this one.[p]
Now then...[p]
[_tb_end_text]

[jump  storage="pro_000.ks"  target="*Heard_Boss"  ]
*Ignore_Boss_2

[tb_start_text mode=1 ]
#???
Guess it's really my imagination, [p]
Focus, gonna focus...[p]
It's the only way that this reality will change...[p]
[_tb_end_text]

*000_end

[tb_start_text mode=1 ]
Well, that's it then, my fragment of imagination (or not).[p]
I think we'll not meet again.[p]
[_tb_end_text]

[stopbgm  time="1000"  fadeout="true"  ]
[bg  time="1000"  method="crossfade"  storage="black.png"  ]
[jump  storage="day1_init.ks"  target=""  ]
[cm  ]
