#比較して変化があったらmainへ
function #oh_my_dat:please
data modify storage ckenja.reversible: current.Items set from block ~ ~ ~ Items
data modify storage ckenja.reversible: temp.Items set from storage ckenja.reversible: current.Items
execute store success score #changed ckenja.reversible run data modify storage ckenja.reversible: temp.Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.reversible.past.Items
execute if score #changed ckenja.reversible matches 1 run function ckenja.reversible:main
