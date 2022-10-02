#tellraw @a {"storage":"ckenja.reversible:","nbt":"turn.callback"}
scoreboard players operation #turn ckenja.reversible = #slot ckenja.reversible
function ckenja.reversible:turn/slot
data remove storage ckenja.reversible: turn.store