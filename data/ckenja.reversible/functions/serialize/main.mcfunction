#27枠のインベントリの空きスロットにnullを入れる
#diff.inputに比較したいデータを入れれば、それと違う場所のデータだけoutputに出力する

data remove storage ckenja.reversible: serialize.output
#diff初期化
data modify storage array_util: Array set from storage ckenja.reversible: serialize.diff.input
data remove storage ckenja.reversible: serialize.diff.output
function array_util:api/force_delete_cache

execute if data storage ckenja.reversible: serialize.Items[-1] run function ckenja.reversible:serialize/loop
#ちゃんと27個入れることで逆転したときに0始まりになるように
execute store result score #slot ckenja.reversible run data get storage ckenja.reversible: serialize.output
scoreboard players operation #slot ckenja.reversible *= #-1 ckenja.reversible
scoreboard players add #slot ckenja.reversible 27
execute if score #slot ckenja.reversible matches 1.. run function ckenja.reversible:serialize/null

data modify storage array_util: Array set from storage ckenja.reversible: serialize.output
function array_util:api/force_delete_cache
function array_util:api/reverse
data remove storage ckenja.reversible: serialize.diff.input
