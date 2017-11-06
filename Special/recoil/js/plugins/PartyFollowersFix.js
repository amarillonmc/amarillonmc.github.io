//=============================================================================
// Party Numbers Fix.js
//=============================================================================

/*:
 * @plugindesc Fixes how many followers you can show and how many battle members you can show.
 * @author Soulpour777
 *
 * @param Followers
 * @desc Number of followers you can have by default.
 * @default 20
 * @param BattleMembers
 * @desc Number of battle members you can have by default.
 * @default 5
 *
 * @help Followers - number of followers / BattleMembers - members you can use in battle.
 */

 // -----------------------------
 // Terms:
 // Free for everyone, just credit me and chill.
 //------------------------------

var parameters = PluginManager.parameters('PartyFollowersFix');
var max_followers = Number(parameters['Followers']); // how many maximum people in your line do you want contained?
var max_battle_members = Number(parameters['BattleMembers']); // how many maximum people in your battle field do you want contained?

Game_Follower.prototype.actor = function() {
    return $gameParty.members()[this._memberIndex];
};

Game_Followers.prototype.initialize = function() {
    this._visible = $dataSystem.optFollowers;
    this._gathering = false;
    this._data = [];
    for (var i = 1; i < max_followers; i++) {
        this._data.push(new Game_Follower(i));
    }
};

Sprite_Actor.prototype.setActorHome = function(index) {
    this.setHome(600 + index * 32, 280 + index * 28);
};

Game_Party.prototype.maxBattleMembers = function() {
    return max_battle_members;
};
