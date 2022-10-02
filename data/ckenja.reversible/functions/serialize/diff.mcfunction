execute store result score $Move ArrayUtilInput run data get storage ckenja.reversible: serialize.Items[-1].Slot
function array_util:api/move
execute store success score #changed ckenja.reversible run data modify storage array_util: Array[-1].id set from storage ckenja.reversible: serialize.Items[-1].id
function array_util:api/revert
execute if data storage ckenja.reversible: serialize{Secondary:true} run function ckenja.reversible:serialize/secondary
execute if score #changed ckenja.reversible matches 1 run data modify storage ckenja.reversible: serialize.diff.output append from storage ckenja.reversible: serialize.Items[-1]
#tellraw @a {"storage":"ckenja.reversible:","nbt":"serialize.Items"}