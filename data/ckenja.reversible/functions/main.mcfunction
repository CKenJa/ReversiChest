#連想リスト化、ついでにいまアイテムがあるスロットの過去との差分を取る
data modify storage ckenja.reversible: serialize.Items set from storage ckenja.reversible: current.SecondaryItems
data modify storage ckenja.reversible: serialize.diff.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.SecondaryArray
data modify storage ckenja.reversible: serialize.Secondary set value true
function ckenja.reversible:serialize/main
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.SecondaryArray set from storage array_util: Array
data remove storage ckenja.reversible: serialize.diff.SecondaryOutput
data modify storage ckenja.reversible: serialize.diff.SecondaryOutput set from storage ckenja.reversible: serialize.diff.output
#tellraw @a {"storage":"ckenja.reversible:","nbt":"serialize.diff.output"}
#tellraw @a {"storage":"ckenja.reversible:","nbt":"serialize.diff.SecondaryOutput"}

data modify storage ckenja.reversible: serialize.Items set from storage ckenja.reversible: current.Items
data modify storage ckenja.reversible: serialize.diff.input set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Array
function ckenja.reversible:serialize/main
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Array set from storage array_util: Array

data modify storage array_util: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.SecondaryArray[]
data modify storage ckenja.reversible: serialize.diff.output append from storage ckenja.reversible: serialize.diff.SecondaryOutput[]

#差分があったスロットを基準に8方向を確認し、変更する場所とIDを保存
execute if data storage ckenja.reversible: serialize.diff.output[-1] run function ckenja.reversible:turn/item
#変更を反映させる
function ckenja.reversible:reflect
#次回変更時用にデータを記録
function ckenja.reversible:past
