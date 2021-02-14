# Battle Plan | 战斗计划

__Life is TATAKAI.
Never lose your might.
Faith will help you win tonight!__

[EN]
This secret page is for me and other friends to track the progress of Project Spaceship, AKA the process of bringing Tokiwa Battle Royale to RMMV / HTML5 Interface from the original PHP version.

中文的部分请继续向下滚动。

## Core Functions

* [x] Multiplayer

Allowing multiple players to log in and play together through a Web Interface, since RM is involved, an PC or mobile client is also an option.

* [x] Real-Time Battle

Allowing players to battle in Real-Time, we will not use RM built-in battle system.

* [x] PvP Battle

What is a Battle Royale game without players battling other players?

* [ ] PvE Battle

Players should be able to battle natural(NPC) enemies spawned in the game instances too to become stronger.

* [ ] Instance Control
  * [ ] Player need to join a specific instance for core gameplay
  * [ ] Player’s stats will be reseted to Level 1, and their items will be reseted to be chosen from an item pool when entering game instance, their level should be reseted to Level 1 again once out of the instance too.
  * [ ] Instance(s) should be able to lock itself after a set time or after a configable number of players is reached, after which no new players can join. Before that, any player can join.
  * [ ] Player(s) whose HP reaches 0 is kicked out of the instance.
  * [ ] After Instances gets locked, and a certain time is passed, if there’s only one player alive, they’re recorded as winner.
  * [ ] Alternative win conditions, including defeating a boss character and use its drops, or using a certain item at a certain location, will also end the game and label themselves as winners.
  * [ ] Instances will feature Item Box with loottable that refresh itself after a certain time is passed, also will offer stronger items later in the game.
  * [ ] Passive, Active and Summonable (on item/condition) enemy NPCs.
  * [ ] Instances should reset itself when a round of game is over.
  * [ ] After a (configurable) set of time, parts of the map will be rendered not enterable and any player in it when this is applied is killed, a certain skill can remove this limitation in a given time.

* [ ] Player Control
  * [ ] Player should grow stronger from attacking, defending and through using/equipping specific items.
  * [ ] Player should be able to assign themselves in classes when they join the game for free once and after that through items, which would modify their statline and give them skills related to various actions.
  * [ ] Player should be able to use various skills to attack or use as utilities.
  * [ ] Players should be able to team-up in instance to swap items and prevent attacking each other.

* [ ] Item Control
  * [ ] Weapon Types:

Close Range: Fists/Empty Handed, Blunt weapon, Slashing weapon
Long Range: Firearm, Throwables, Spiritual Attack
Special: Trap, Explosive

  * [ ] Equipment Types
  * [ ] Useable Items (Healing Item, Skillbooks, Special Items, etc.)
  * [ ] Gold and Shops in-instance to purchase items
  * [ ] Achievement Points and Shops outside-of-instance to purchase skins/titles/etc, those should be persistent and not be reseted by instances.
  * [ ] Item recipts to create more items by mixing/combining items.

## Novelty Functions

Those are ones I can think of at the moment, would properly expand in the far future.

* [ ] Betting System - Player can bet a winner after an instance is closed to earn resources
* [x] Leaderboard - Player should be able to view an leaderboard tracking their score.
* [ ] Single Player Content - Content used for storytelling, may or may not using ABS, usually would be Visual Novel-like.
* [ ] MV3D Implementation?
* [ ] Unlockable, Equipable Passives that may introduce more special skills to use in instance.

## Resources

* [x] Mapping Chipsets
* [ ] Character Art Assets (Partial Ready)
* [X] Theme Music
* [X] BGM
* [X] Basic Story Setting
* [X] Story Chapter 0 (How we get there from old PHP version, canonical in-story explanation)
* [X] Story content past Chapter 0
* [ ] Item Database
* [ ] Item Loot Table
* [ ] Database NPC / Enemies
* [ ] Maps

... and other on-demand resources.

## Note

This page will be updated periodically.

If you see this page via me providing the link, or read it from my Github logs, please do not share this page, it’s for your eyes only. Thank you.

[ZH-CN]
此秘密页面是供支持者和我自己追踪 Project Spaceship，即，常磐大逃杀游戏之由 PHP 网页游戏至 RM/HTML5 平台移植进度所用。

## 核心功能

* [x] 多人在线游戏

允许多位玩家通过网页界面登陆并一同游戏，因为引擎适用 RM，也可以使用 PC 客户端以及安卓客户端进行游戏。

* [x] 实时战斗

玩家将可实时在地图上进行战斗，我们并不使用 RM 自带的回合制战斗系统。

* [x] PvP 战斗

那是当然，不 PvP 怎么大逃杀？

* [ ] PvE 战斗

玩家应可以和房间内的敌物 NPC 进行战斗以变得更强。

* [ ] 副本·房间控制
  * [ ] 要进行游玩，玩家必须加入副本·房间。
  * [ ] 玩家的数值将重置到 LV1，开局物品将从物品表内随机决定，离开副本时玩家的数值和物品也将被重制。
  * [ ] 在一段时间过后，或（可配置）的玩家限额到达后，副本应该被锁定直到胜利者产生或玩家全员阵亡。
  * [ ] HP 归零的玩家将判定阵亡，被踢出副本。
  * [ ] 副本锁定后一段时间后，留存于副本中的最后一名玩家被判定为胜利者。
  * [ ] 额外的胜利方式包括打倒某些 NPC BOSS 角色，或在特定地区使用特定物品。
  * [ ] 副本内将含有一定时间后定时刷新物品的宝箱以及可调查地点，物品依照物品表决定，根据游戏时间推移将出现更强的物品。
  * [ ] 被动性，主动性以及可召唤（因玩家动作/使用物品/其他条件）等的 NPC。
  * [ ] 游戏结束时，副本应该被重置。
  * [ ] 游戏开始（可配置）一定时间后，地图某些地区将不可进入，在这些地区的玩家会被直接杀死。可以通过技能暂时解除本限制。

* [ ] 玩家控制
  * [ ] 玩家可通过攻击敌人，防御伤害，以及装备·使用物品变得更强。
  * [ ] 在进入游戏后，玩家有且只有一次为自己免费选择职介的机会，职介会影响玩家的数值，并赋予额外的对应技能。
  * [ ] 玩家可以使用技能进行攻击，或实现特定的功能（例如治疗或者解除禁区等）
  * [ ] 玩家应可在副本内组队，防止友军伤害并可分享物品。

* [ ] 物品控制
  * [ ] 物品类别

近战武器： 拳/空手， 钝器/殴， 刀刃/斩
远程武器： 火器/射， 飞行道具/投，灵力攻击/爆
特殊武器： 陷阱，爆炸物/爆

  * [ ] 装备类型
  * [ ] 可用式物品（补给·技能书等）
  * [ ] 可用于在副本游戏中购买物品用的货币和机制
  * [ ] 可用于在游戏之外购买例如头衔或皮肤等的其他货币和机制
  * [ ] 物品合成系统

## 其他功能

今后自然可能会加笔。

* [ ] 赌注系统 - 在房间锁定之后，玩家可以对胜者下注获取奖励。
* [x] 排行榜 - 追踪游戏胜点分数。
* [ ] 单人游玩内容 - 用于叙事的电子小说内容，可能也会引入 ABS。
* [ ] MV3D？
* [ ] 可解锁并带入游戏装备的被动技能（电波服卡片系统）

## 资源

* [x] 地图用图块
* [ ] 人物美术资源（部分已完成）
* [X] 主题歌
* [X] BGM
* [X] 故事框架
* [X] 故事第 0 章（世界观中解释移植）
* [X] 后续故事发展
* [ ] 物品数据库
* [ ] 物品掉落表
* [ ] NPC / 敌人数据库
* [ ] 地图

这是戏肉，理论上永远无法彻底完成，将持续更新。

## 请注意

本页面将定时更新。

如果你从我本人，我的爱发电，我的 Github 记录等之外获取了此页地址，谨记此页是秘密内容，请勿和他人分享。保持神秘就行了，不是么？

