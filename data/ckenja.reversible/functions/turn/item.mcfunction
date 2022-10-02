execute store result score #slot ckenja.reversible run data get storage ckenja.reversible: serialize.diff.output[-1].Slot

#ひっくり返す可能性の余地があるか?
data modify storage ckenja.reversible: turn.callback set value "up"
execute if score #slot ckenja.reversible matches 18.. run function ckenja.reversible:turn/main
data modify storage ckenja.reversible: turn.callback set value "down"
execute if score #slot ckenja.reversible matches ..8 run function ckenja.reversible:turn/main

scoreboard players operation #slot.row ckenja.reversible = #slot ckenja.reversible
scoreboard players operation #slot.row ckenja.reversible %= #9 ckenja.reversible

data modify storage ckenja.reversible: turn.callback set value "left"
execute if score #slot.row ckenja.reversible matches 2.. run function ckenja.reversible:turn/main
data modify storage ckenja.reversible: turn.callback set value "right"
execute if score #slot.row ckenja.reversible matches ..6 run function ckenja.reversible:turn/main

#%= #10

data modify storage ckenja.reversible: turn.callback set value "up-left"
execute if score #slot ckenja.reversible matches 20.. run function ckenja.reversible:turn/main
data modify storage ckenja.reversible: turn.callback set value "down-right"
execute if score #slot ckenja.reversible matches ..6 run function ckenja.reversible:turn/main

#%= #8

data modify storage ckenja.reversible: turn.callback set value "up-right"
execute if score #slot ckenja.reversible matches 18..24 run function ckenja.reversible:turn/main
data modify storage ckenja.reversible: turn.callback set value "down-left"
execute if score #slot ckenja.reversible matches 2..8 run function ckenja.reversible:turn/main

data remove storage ckenja.reversible: serialize.diff.output[-1]
execute if data storage ckenja.reversible: serialize.diff.output[-1] run function ckenja.reversible:turn/loop
