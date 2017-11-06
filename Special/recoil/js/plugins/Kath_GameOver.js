//=============================================================================
// Custom Game Over, version 1.3
// by McKathlin
// Kath_GameOver.js
// Last Update: 2016.08.18
//=============================================================================

/*:
 * @plugindesc Change what happens when the party dies or Game Over is called.
 * 
 * @param Party Death Common Event ID
 * @desc The ID of the common event to run as soon as the party dies.
 * Leave blank to fade immediately to Game Over.
 * @default
 * 
 * @param Show Game Over Scene
 * @desc Whether to show Scene_Gameover. If false, only a brief fade to black is seen.
 * @default true
 * 
 * @param Reload Last Save
 * @desc If true, reload from last save instead of title screen,
 * or before common event, if any.
 * @default false
 * 
 * @param After Game Over Common Event ID
 * @desc The ID of the common event to run AFTER the Game Over scene (or fadeout).
 * Leave blank to go to title.
 * @default 
 * 
 * @help This plugin is designed to play well by itself and with other plugins.
 * There are no known conflicts, but conflict is possible with other plugins
 * that directly alter Game Over behavior.
 * 
 * ================================
 * = Party Death Common Event ID  =
 * ================================
 * Assigning a Party Death Common Event replaces the usual Game Over scene
 * call with a common event call. This lets you (the game designer) make 
 * something happen instead of (or before) the standard Game Over screen.
 * Open the database to Common Events to find the ID of the common event
 * to call on party death, and enter this ID number as the parameter.
 * Here are some pointers:
 * * The Party Death common event will run in the same scene where the party
 *   was just defeated. If the party died in battle, the common event will run
 *   in battle, right after the party-is-defeated message and music effect.
 *   So if you want to make something happen after a slow fadeout
 *   and return to the map, I recommend using the After Game Over Common Event
 *   instead.
 * * If you would like the Game Over screen (or a fadeout and cut to the map
 *   if "Show Game Over Scene" is false) to show at the end of your common
 *   event, remember to use the Game Over command in your common event.
 *   Avoiding the Game Over screen is easy: avoid calling the Game Over command.
 * * Directly calling the Game Over command from any event will still show
 *   the Game Over screen normally (unless you've set Show Game Over Scene to
 *   false). To force your custom party death behavior, use a command that
 *   calls your party death common event instead.
 * 
 * =========================
 * = Show Game Over Scene  =
 * =========================)
 * RPG Maker's default behavior takes the player to Scene_GameOver on
 * party death or on a scene processing call to Scene_GameOver.
 * This processing shows a Game Over screen.
 * After the player sees the screen and presses any key,
 * the game exits to the title screen.
 * 
 * If Show Game Over Scene is set to false, player will see a fade to black
 * before going to the next scene. This will be the case regardless of whether
 * Game Over state is reached by party death or by a direct command in an event.
 * 
 * Whether or not the Game Over screen shows, which scene is next depends on
 * whether the After Game Over Common Event is set, and what it is set to.
 * 
 * ====================
 * = Reload Last Save =
 * ====================
 * Set Reload Last Save to true to make the game automatically reload from its
 * most recent save on game over. If a Game Over Common Event is specified,
 * the reload occurs before the common event is reserved. If no common event
 * is given, then the reload happens instead of going to the title screen.
 * 
 * If Reload Last Save is true but the player has not yet saved,
 * then the player is returned to the Title Screen.
 * 
 * ====================================
 * = After Game Over Common Event ID  =
 * ====================================
 * Assigning a After Game Over common event makes gameplay continue after
 * the party loses, instead of RPG Maker's default behavior of returning the
 * party to the title screen. Open the database to Common Events to find the
 * ID of the common event to call on game over, and enter this ID number as
 * the parameter.
 * 
 * In the content of the common event, the game designer can customize what
 * happens when the party dies or reaches an event-dictated Game Over state.
 * The After Game Over common event might do some of the following things:
 * * Take away gold and/or items
 * * Return the player to a safe place
 * * Restore HP to one or more party members
 * * Have the party's rescuer say something
 * * ...anything that suits this game!
 *
 * IMPORTANT: When control flows to the Game Over common event,
 * the screen will start blacked out. This gives the event time to handle
 * transfers and other processing before showing the player the screen.
 * Once those things are ready, remember to fade in!
 * 
 * The After Game Over Common Event (AGOCE) differs from the Party Death Common
 * Event (PDCE) in the following ways:
 * * The PDCE runs instead of or before the Game Over screen or fadeout;
 *   the AGOCE runs after the Game Over scene or fadeout completes.
 * * The PDCE only automatically replaces Game Overs caused by party death.
 *   The AGOCE autoruns after all Game Overs, regardless of their cause.
 * * The PDCE runs in the same scene where party death occurred.
 *   The AGOCE runs in a newly started map scene, with the screen faded to
 *   black, and the party leader revived to 1 HP.
 */

var Imported = Imported || {};
Imported.Kath_GameOver = true;

//=============================================================================
// Helper method: parseBoolean
//=============================================================================
var Kath = Kath || {};
Kath.Core = Kath.Core || {};

// Convert a user-entered string into a Boolean true or false value.
Kath.Core.parseBoolean = function(parameter, defaultValue) {
    switch (String(parameter).trim().toLowerCase()) {
        case 'true':
        case 't':
        case 'yes':
        case 'y':
        case 'on':
        case '1':
            return true;
        case 'false':
        case 'f':
        case 'no':
        case 'n':
        case 'off':
        case '0':
            return false;
        default:
            return defaultValue;
    } // end switch
};

//=============================================================================
// Parameters and Constants
//=============================================================================

Kath.Parameters = PluginManager.parameters('Kath_GameOver');
Kath.Param = Kath.Param || {};

Kath.Param.PartyDeathCommonEventID =
    Number.parseInt(Kath.Parameters['Party Death Common Event ID']);
Kath.Param.ShowGameOverScene =
    Kath.Core.parseBoolean(Kath.Parameters['Show Game Over Scene'], true);
Kath.Param.ReloadLastSave =
    Kath.Core.parseBoolean(Kath.Parameters['Reload Last Save'], false);
Kath.Param.AfterGameOverCommonEventID =
    Number.parseInt(Kath.Parameters['After Game Over Common Event ID']);

Kath.GameOver = {};
Kath.GameOver.RELOAD_FADE_DELAY = 60;

//=============================================================================
// Party death common event
//=============================================================================

// Replacement method
// Like original, but with handling added for Party Death Common Event case.
BattleManager.processDefeat = function() {
    this.displayDefeatMessage();
    this.playDefeatMe();
    if (this._canLose) {
        this.replayBgmAndBgs();
        this.endBattle(2);
    } else {
        AudioManager.stopBgm();
        if (Kath.Param.PartyDeathCommonEventID) {
            $gameParty.reviveLeader();
            $gameTemp.reserveCommonEvent(Kath.Param.PartyDeathCommonEventID);
            $gameTroop.setupBattleEvent(); // Run the reserved common event.
            // the battle doesn't end here in this case,
            // unless a scene control command ends it in the common event.
        } else {
            this.endBattle(2);
        }
    }
};

// replacement method
Scene_Base.prototype.checkGameover = function() {
    if ($gameParty.isAllDead()) {
        if (Kath.Param.PartyDeathCommonEventID) {
            $gameParty.reviveLeader();
            $gameTemp.reserveCommonEvent(Kath.Param.PartyDeathCommonEventID);
        } else {
            SceneManager.goto(Scene_Gameover);
        }
    }
};

Game_Party.prototype.reviveLeader = function() {
    if ($gameParty.isAllDead()) {
        $gameParty.leader().setHp(1);
        $gameParty.leader().clearStates();
    }
};

//=============================================================================
// Skip Game Over Scene
// Redefine several methods of Scene_GameOver
// so that it skips straight to the next scene.
//=============================================================================

if (!Kath.Param.ShowGameOverScene) {
    Scene_Gameover.prototype.create = function() {
        Scene_Base.prototype.create.call(this);
        //this.playGameoverMusic(); // No music.
        this.createBackground();
    };

    Scene_Gameover.prototype.start = function() {
        Scene_Base.prototype.start.call(this);
        //this.startFadeIn(this.slowFadeSpeed(), false); // No fadein.
    };

    Scene_Gameover.prototype.update = function() {
        // Do not require a trigger.
        if (this.isActive() && !this.isBusy()) {
            this.gotoTitle();
        }
        Scene_Base.prototype.update.call(this);
    };

    Scene_Gameover.prototype.createBackground = function() {
        // Load image to avoid potential conflicts.
        this._backSprite = new Sprite();
        this._backSprite.bitmap = ImageManager.loadSystem('GameOver');
        //this.addChild(this._backSprite); // But don't show it!
    };
}

// new method
Kath.GameOver.findPostGameOverSceneClass = function() {
    if (Kath.Param.ReloadLastSave) {
        if (DataManager.isThisGameFile(DataManager.lastAccessedSavefileId())) {
            return Scene_Map;
        } else {
            return Scene_Title;
        }
    } else if (Kath.Param.AfterGameOverCommonEventID) {
        return Scene_Map;
    } else {
        return Scene_Title;
    }
};

//=============================================================================
// After-Game-Over behavior. This includes reload last save, if called for.
//=============================================================================

if (Kath.Param.ReloadLastSave) {
    // extended method
    Kath.GameOver.Scene_Gameover_gotoTitle = Scene_Gameover.prototype.gotoTitle;
    Scene_Gameover.prototype.gotoTitle = function() {
        var saveId = DataManager.lastAccessedSavefileId();
        if (!DataManager.isThisGameFile(saveId)) {
            // This game hasn't been saved yet. Go to the title screen.
            return Kath.GameOver.Scene_Gameover_gotoTitle.call(this);
        }
        DataManager.loadGame(saveId);
        $gamePlayer.requestMapReload();
        $gameScreen.startFadeOut(1); // start next scene blacked out
        if (Kath.Param.AfterGameOverCommonEventID > 0) {
            $gameTemp.reserveCommonEvent(Kath.Param.AfterGameOverCommonEventID);
            SceneManager.goto(Scene_Map);
        } else {
            SceneManager.goto(Scene_Map);
            // Transfer to where we are, to set BGM, map fadein, etc.
            $gamePlayer.reserveTransfer($gameMap.mapId(),
                $gamePlayer.x, $gamePlayer.y, $gamePlayer.direction(), 0);
            $gameScreen.startFadeIn(this.slowFadeSpeed());
        }
    };
} else if (Kath.Param.AfterGameOverCommonEventID > 0) {
    // replacement method
    Scene_Gameover.prototype.gotoTitle = function() {
        $gameScreen.startFadeOut(1); // start next scene blacked out
        $gameParty.reviveLeader();
        $gameTemp.reserveCommonEvent(Kath.Param.AfterGameOverCommonEventID);
        SceneManager.goto(Scene_Map);
    };
}

