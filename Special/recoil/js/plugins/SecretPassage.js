/*:
 * @plugindesc    The SecretPassage plugin allows you to make an otherwise impassable tile passable through the use of regions.
 * @author    mykrme
 *
 * @param    Passable
 * @desc    The region number used for a secret passage - always passable.
 * @default    1
 *
 * @param    Impassable
 * @desc    The region number used for the surroundings of a secret passage - always impassable.
 * @default    2
 *
 * @param    Invisible
 * @desc    The region number used for a secret passage - always passable. Character is invisible.
 * @default    3
 *
 * @help 
 */
var settings = PluginManager.parameters("SecretPassage");
var passable_region = parseInt(settings["Passable"]) || 1;
var impassable_region = parseInt(settings["Impassable"]) || 2;
var invisible_region = parseInt(settings["Invisible"]) || 3;

var _Game_Map_checkPassage = Game_Map.prototype.checkPassage;
Game_Map.prototype.checkPassage = function(x, y, bit) {
    var region = $gameMap.regionId(x, y);
    switch (region) {
        case passable_region:
        case invisible_region: return true;
        case impassable_region: return false;
        default: return _Game_Map_checkPassage.call(this, x, y, bit);
    }
};

var ShaderTilemap__paintTiles = ShaderTilemap.prototype._paintTiles;
ShaderTilemap.prototype._paintTiles = function(startX, startY, x, y) {
    this._temp_mx = startX + x;
    this._temp_my = startY + y;
    this._tileId_below = this._readMapData(this._temp_mx, this._temp_my + 1, 0); // only checks A type tiles
    ShaderTilemap__paintTiles.call(this, startX, startY, x, y);
}

var Tilemap__isHigherTile = Tilemap.prototype._isHigherTile;
Tilemap.prototype._isHigherTile = function(tileId) {
    var currentTile_invisibleRegion = this._readMapData(this._temp_mx, this._temp_my, 5) == invisible_region;
    var tileOneBelow_invisibleRegion = this._readMapData(this._temp_mx, this._temp_my + 1, 5) == invisible_region;
    var playerStandsBelow = $gamePlayer._realY > this._temp_my;
  
    if (!tileOneBelow_invisibleRegion && playerStandsBelow) { // to show the hat tops
        return Tilemap__isHigherTile.call(this, tileId);
    }
    if (currentTile_invisibleRegion) {
        return 0x10;
    }
    if (tileOneBelow_invisibleRegion && Tilemap.isSameKindTile(tileId, this._tileId_below)) { // to hide the hat tops
        return 0x10;
    }
    return Tilemap__isHigherTile.call(this, tileId);
};