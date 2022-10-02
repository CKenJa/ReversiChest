execute store result score #secondary ckenja.reversible run data get storage ckenja.reversible: serialize.Items[-1].Slot
scoreboard players add #secondary ckenja.reversible 27 
execute store result storage ckenja.reversible: serialize.Items[-1].Slot byte 1 run scoreboard players get #secondary ckenja.reversible
