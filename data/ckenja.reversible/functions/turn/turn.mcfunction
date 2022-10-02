data modify storage ckenja.reversible: reflect.Items append value {Slot:-1}
data modify storage ckenja.reversible: reflect.Items[-1].id set from storage ckenja.reversible: serialize.diff.output[-1].id
data modify storage ckenja.reversible: reflect.Items[-1].Slot set from storage ckenja.reversible: turn.store[-1]
data remove storage ckenja.reversible: turn.store[-1]
execute if data storage ckenja.reversible: turn.store[-1] run function ckenja.reversible:turn/turn