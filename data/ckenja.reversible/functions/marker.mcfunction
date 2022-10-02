#比較して変化があったらmainへ
function #oh_my_dat:please
data modify storage ckenja.reversible: current.Items set from block ~ ~ ~ Items
data modify storage ckenja.reversible: current.SecondaryItems set from block ~-1 ~ ~ Items
data modify storage ckenja.reversible: temp.Items set from storage ckenja.reversible: current.Items
data modify storage ckenja.reversible: temp.SecondaryItems set from storage ckenja.reversible: current.SecondaryItems
execute store success score #changed ckenja.reversible run data modify storage ckenja.reversible: temp.Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Items
execute store success score #secondaryChanged ckenja.reversible run data modify storage ckenja.reversible: temp.SecondaryItems set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.SecondaryItems

scoreboard players operation #changed ckenja.reversible += #secondaryChanged ckenja.reversible
execute if score #changed ckenja.reversible matches 1.. run function ckenja.reversible:main
