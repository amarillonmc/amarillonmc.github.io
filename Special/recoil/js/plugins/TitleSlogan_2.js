//=============================================================================
// TitleSlogan.js
//=============================================================================

/*:
 * @plugindesc Add extra text to title screen and window title.
 * @author pareidolon
 * @help Enter up to twelve subtitles as parameters.
 * If you want more, add them to the code in this file.
 * This was created using the RPG_Scenes script for RPG Maker MV
 * as well as a parts of the official plugins.
 * All new content is free to use under CC BY-SA 4.0
 * 
 * @param Subtitle_A
 * @desc First random slogan.
 * @default This is a slogan!
 * 
 * @param Subtitle_B
 * @desc Second random slogan.
 * @default This is another Slogan!
 * 
 * @param Subtitle_C
 * @desc Third random slogan.
 * @default Short Slogan!
 * 
 * @param Subtitle_D
 * @desc Fourth random slogan.
 * @default This is a looooooooooong Slogan!
 * 
 * @param Subtitle_E
 * @desc Fifth random slogan.
 * @default Baby Slogan.
 * 
 * @param Subtitle_F
 * @desc Sixth random slogan.
 * @default Momma Slogan.
 * 
 * @param Subtitle_G
 * @desc Seventh random slogan.
 * @default Poppa Slogan.
 * 
 * @param Subtitle_H
 * @desc Eighth random slogan.
 * @default Write one twice for 2x chance.
 * 
 * @param Subtitle_I
 * @desc Ninth random slogan.
 * @default Write one twice for 2x chance.
 * 
 * @param Subtitle_J
 * @desc Tenth random slogan.
 * @default This is a "slogan."
 * 
 * @param Subtitle_K
 * @desc Eleventh random slogan.
 * @default I'm running out of ideas.
 * 
 * @param Subtitle_L
 * @desc Twelfth random slogan.
 * @default Oh whew, good timing!
 * 
 */

(function() {

    var SloganText = ""
    var parameters = PluginManager.parameters('TitleSlogan');
    var Subtitle_A = parameters['Subtitle_A']
    var Subtitle_B = parameters['Subtitle_B']
    var Subtitle_C = parameters['Subtitle_C']
    var Subtitle_D = parameters['Subtitle_D']
    var Subtitle_E = parameters['Subtitle_E']
    var Subtitle_F = parameters['Subtitle_F']
    var Subtitle_G = parameters['Subtitle_G']
    var Subtitle_H = parameters['Subtitle_H']
    var Subtitle_I = parameters['Subtitle_I']
    var Subtitle_J = parameters['Subtitle_J']
    var Subtitle_K = parameters['Subtitle_K']
    var Subtitle_L = parameters['Subtitle_L']

    var _Scene_Title_create_fg = Scene_Title.prototype.createForeground;
    Scene_Title.prototype.createForeground = function() {
    this._gameSloganSprite = new Sprite(new Bitmap(Graphics.width, Graphics.height));
    this.addChild(this._gameSloganSprite);
        _Scene_Title_create_fg.call(this);
    };

    var _Scene_Title_draw_gt = Scene_Title.prototype.drawGameTitle;
    Scene_Title.prototype.drawGameTitle = function() {
    var x = 20;
    var y = Graphics.height * 2 /5;
    var maxWidth = Graphics.width - x * 2;
    if(SloganText == ""){
        // n = number of different texts.
        var n = 12
        switch(Math.floor((Math.random() * n) + 1)){
            case 1:
                SloganText = Subtitle_A
                break;
            case 2:
                SloganText = Subtitle_B
                break;
            case 3:
                SloganText = Subtitle_C
                break;
            case 4:
                SloganText = Subtitle_D
                break;
            case 5:
                SloganText = Subtitle_E
                break;
            case 6:
                SloganText = Subtitle_F
                break;
            case 7:
                SloganText = Subtitle_G
                break;
            case 8:
                SloganText = Subtitle_H
                break;
            case 9:
                SloganText = Subtitle_I
                break;
            case 10:
                SloganText = Subtitle_J
                break;
            case 11:
                SloganText = Subtitle_K
                break;
            case 12:
                SloganText = Subtitle_L
                break;
            default:
                SloganText = "Twelve is not enough for me."
                break;
        };
    //Remove the below line if you don't want to change the window/tab title.
    document.title = $dataSystem.gameTitle + ": " + SloganText
    };

    this._gameSloganSprite.bitmap.outlineColor = 'black';
    this._gameSloganSprite.bitmap.outlineWidth = 6;
    this._gameSloganSprite.bitmap.fontSize = 48;
    this._gameSloganSprite.bitmap.drawText(SloganText, x, y, maxWidth, 48, 'center');
        _Scene_Title_draw_gt.call(this);
    };

})();
