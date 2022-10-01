#連想リスト化、ついでにいまアイテムがあるスロットの過去との差分を取る
data modify storage ckenja.reversible: serialize.Items set from storage ckenja.reversible: current.Items
data modify storage ckenja.reversible: serialize.diff.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Array
function ckenja.reversible:serialize/main
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Array set from storage array_util: Array
#差分があったスロットを基準に8方向を確認し、変更する場所とIDを保存
function ckenja.reversible:turn/general
#変更を反映させる
#function ckenja.reversible:main/reflect
#次回変更時用にデータを記録
function ckenja.reversible:past
