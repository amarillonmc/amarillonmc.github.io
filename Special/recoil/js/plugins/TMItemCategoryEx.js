//=============================================================================
// TMPlugin - アイテムカテゴリ拡張
// バージョン: 1.0.0
// 最終更新日: 2017/01/31
// 配布元    : http://hikimoki.sakura.ne.jp/
//-----------------------------------------------------------------------------
// Copyright (c) 2017 tomoaky
// Released under the MIT license.
// http://opensource.org/licenses/mit-license.php
//=============================================================================

/*:
 * @plugindesc アイテムカテゴリの追加、削除をおこないます。
 *
 * @author tomoaky (http://hikimoki.sakura.ne.jp/)
 *
 * @param categoryList
 * @desc アイテムカテゴリの一覧 (詳しくはヘルプにて)
 * 初期値: item weapon armor keyItem
 * @default item weapon armor keyItem
 *
 * @help
 * TMPlugin - アイテムカレゴリ拡張 ver1.0.0
 *
 * 使い方:
 *
 *   プラグインパラメータでアイテムカテゴリを設定してください。
 *   item, weapon, armor, keyItem は アイテム, 武器, 防具, 大事なもの に
 *   対応しています。
 *   たとえばアイテムと武器の間に 書物 というカテゴリを追加したい場合は
 *   item 書物 weapon armor keyItem
 *   というような設定になります。
 * 
 *   追加したカテゴリは itemCategory タグを使ってアイテムに設定することが
 *   できます。タグを設定したアイテムは通常のアイテムカテゴリには
 *   表示されなくなります。
 * 
 *   また、不要なカテゴリを削除することもできます。
 *   カテゴリが 1 個しかない場合はカテゴリ選択の処理自体が省略されます。
 * 
 *   プラグインコマンドはありません。
 *
 *   このプラグインは RPGツクールMV Version 1.3.4 で動作確認をしています。
 * 
 * 
 * メモ欄タグ（アイテム）:
 * 
 *   <itemCategory:書物>
 *     このアイテムのカテゴリを 書物 に設定します。
 *     プラグインパラメータ categoryList に 書物 というカテゴリが
 *     あればそこに表示されます。
 */

var Imported = Imported || {};
Imported.TMItemCategoryEx = true;

var TMPlugin = TMPlugin || {};
TMPlugin.ItemCategoryEx = {};
TMPlugin.ItemCategoryEx.Parameters = PluginManager.parameters('TMItemCategoryEx');
TMPlugin.ItemCategoryEx.CategoryList = TMPlugin.ItemCategoryEx.Parameters['categoryList'].split(' ');

(function() {

  //-----------------------------------------------------------------------------
  // Window_ItemCategory
  //

  Window_ItemCategory.prototype.maxCols = function() {
    return TMPlugin.ItemCategoryEx.CategoryList.length;
  };

  Window_ItemCategory.prototype.makeCommandList = function() {
    for (var i = 0; i < this.maxCols(); i++) {
      var symbol = TMPlugin.ItemCategoryEx.CategoryList[i];
      if (symbol === 'item') {
        this.addCommand(TextManager.item, 'item');
      } else if (symbol === 'weapon') {
        this.addCommand(TextManager.weapon, 'weapon');
      } else if (symbol === 'armor') {
        this.addCommand(TextManager.armor, 'armor');
      } else if (symbol === 'keyItem') {
        this.addCommand(TextManager.keyItem, 'keyItem');
      } else {
        this.addCommand(symbol, symbol);
      }
    }
  };
  
  //-----------------------------------------------------------------------------
  // Window_ItemList
  //

  var _Window_ItemList_includes = Window_ItemList.prototype.includes;
  Window_ItemList.prototype.includes = function(item) {
    if (item && item.meta.itemCategory) return this._category === item.meta.itemCategory;
    return _Window_ItemList_includes.call(this, item);
  };

  //-----------------------------------------------------------------------------
  // Scene_Item
  //

  var _Scene_Item_create = Scene_Item.prototype.create;
  Scene_Item.prototype.create = function() {
    _Scene_Item_create.call(this);
    if (TMPlugin.ItemCategoryEx.CategoryList.length === 1) {
      this._categoryWindow.deactivate();
      this._categoryWindow.hide();
      var ww = this._itemWindow.width;
      var wh = this._itemWindow.height + this._categoryWindow.height;
      this._itemWindow.move(this._itemWindow.x, this._categoryWindow.y, ww, wh);
      this._itemWindow.setHandler('cancel', this.popScene.bind(this));
      this._itemWindow.setCategory(this._categoryWindow.currentSymbol());
      this.onCategoryOk();
    }
  };

  //-----------------------------------------------------------------------------
  // Scene_Shop
  //

  var _Scene_Shop_create = Scene_Shop.prototype.create;
  Scene_Shop.prototype.create = function() {
    _Scene_Shop_create.call(this);
    if (TMPlugin.ItemCategoryEx.CategoryList.length === 1) {
      var ww = this._sellWindow.width;
      var wh = this._sellWindow.height + this._categoryWindow.height;
      this._sellWindow.move(this._sellWindow.x, this._categoryWindow.y, ww, wh);
      this._sellWindow.setCategory(this._categoryWindow.currentSymbol());
    }
  };

  var _Scene_Shop_commandSell = Scene_Shop.prototype.commandSell;
  Scene_Shop.prototype.commandSell = function() {
    _Scene_Shop_commandSell.call(this);
    if (TMPlugin.ItemCategoryEx.CategoryList.length === 1) {
      this._sellWindow.activate();
      this._statusWindow.hide();
      this._sellWindow.select(0);
      this._categoryWindow.hide();
    }
  };

  var _Scene_Shop_onSellCancel = Scene_Shop.prototype.onSellCancel;
  Scene_Shop.prototype.onSellCancel = function() {
    _Scene_Shop_onSellCancel.call(this);
    if (TMPlugin.ItemCategoryEx.CategoryList.length === 1) {
      this.onCategoryCancel();
    }
  };

})();
