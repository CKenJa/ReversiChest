#それ以上動けない端ではないか?
execute if data storage ckenja.reversible: turn{callback:"up"} if score #turn ckenja.reversible matches 9.. run function ckenja.reversible:turn/store
execute if data storage ckenja.reversible: turn{callback:"down"} if score #turn ckenja.reversible matches ..17 run function ckenja.reversible:turn/store

scoreboard players operation #turn.row ckenja.reversible = #turn ckenja.reversible
scoreboard players operation #turn.row ckenja.reversible %= #9 ckenja.reversible
execute if data storage ckenja.reversible: turn{callback:"left"} if score #turn.row ckenja.reversible matches 1.. run function ckenja.reversible:turn/store
execute if data storage ckenja.reversible: turn{callback:"right"} if score #turn.row ckenja.reversible matches ..7 run function ckenja.reversible:turn/store

execute if data storage ckenja.reversible: turn{callback:"up-left"} if score #turn ckenja.reversible matches 9.. run function ckenja.reversible:turn/store
execute if data storage ckenja.reversible: turn{callback:"down-right"} if score #turn ckenja.reversible matches ..17 run function ckenja.reversible:turn/store

execute if data storage ckenja.reversible: turn{callback:"up-right"} if score #turn ckenja.reversible matches 9.. run function ckenja.reversible:turn/store
execute if data storage ckenja.reversible: turn{callback:"down-left"} if score #turn ckenja.reversible matches ..17 run function ckenja.reversible:turn/store
