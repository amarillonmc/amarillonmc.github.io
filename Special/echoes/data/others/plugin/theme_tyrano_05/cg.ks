;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[cm]

[bg storage="../others/plugin/theme_tyrano_05/image/system/bg_base.jpg" time=100]
[layopt layer=1 visible=true]

[image layer=1 left=0 top=0 storage="../others/plugin/theme_tyrano_05/image/system/bg_cgmode.png" ]

[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    
[endscript]



*cgpage
[cm]
[button graphic="../others/plugin/theme_tyrano_05/image/system/menu_button_close.png" enterimg="../others/plugin/theme_tyrano_05/image/system/menu_button_close2.png"  target="*backtitle" x=820 y=20 ]

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
[cg_image_button graphic="toile.jpg" no_graphic="../others/plugin/theme_tyrano_05/image/cgmode/noimage.png" x=60 y=130 width=160 height=140 folder="bgimage" ]
[cg_image_button graphic="entrance.jpg" no_graphic="../others/plugin/theme_tyrano_05/image/cgmode/noimage.png" x=250 y=130 width=160 height=140 folder="bgimage" ]

@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[iscript]
if(!Array.isArray(tf.selected_cg_image)){
    tf.selected_cg_image = [];
    tf.selected_cg_image[0] = tf.selected_cg_image;
}
[endscript]

[eval exp="tf.cg_index=0"]

*cg_next_image

[image storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage"  ]
[l]
[bg storage="../others/plugin/theme_tyrano_05/image/cgmode/bg_cgmode.jpg" time=10]

[eval exp="tf.cg_index++"]

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



