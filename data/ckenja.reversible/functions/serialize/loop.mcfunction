#空きスロットはID:nullを入れる
execute store result score #length ckenja.reversible run data get storage ckenja.reversible: serialize.output
execute store result score #slot ckenja.reversible run data get storage ckenja.reversible: serialize.Items[-1].Slot -1
scoreboard players add #slot ckenja.reversible 26
scoreboard players operation #slot ckenja.reversible -= #length ckenja.reversible
execute if score #slot ckenja.reversible matches 1.. run function ckenja.reversible:serialize/null
#比較
execute if data storage ckenja.reversible: serialize.diff.input run function ckenja.reversible:serialize/diff
#アイテムを入れる
data modify storage ckenja.reversible: serialize.output append from storage ckenja.reversible: serialize.Items[-1]
data remove storage ckenja.reversible: serialize.Items[-1]
execute if data storage ckenja.reversible: serialize.Items[-1] run function ckenja.reversible:serialize/loop
