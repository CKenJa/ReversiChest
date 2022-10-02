data modify storage ckenja.reversible: turn.store append value -1b
execute store result storage ckenja.reversible: turn.store[-1] byte 1 run scoreboard players get #turn ckenja.reversible
function ckenja.reversible:turn/slot