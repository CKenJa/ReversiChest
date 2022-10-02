data modify block ~ ~ ~ Items[{Slot:0b}].id set from storage ckenja.reversible: reflect.Items[{Slot:0b}].id
data modify block ~ ~ ~ Items[{Slot:1b}].id set from storage ckenja.reversible: reflect.Items[{Slot:1b}].id
data modify block ~ ~ ~ Items[{Slot:2b}].id set from storage ckenja.reversible: reflect.Items[{Slot:2b}].id
data modify block ~ ~ ~ Items[{Slot:3b}].id set from storage ckenja.reversible: reflect.Items[{Slot:3b}].id
data modify block ~ ~ ~ Items[{Slot:4b}].id set from storage ckenja.reversible: reflect.Items[{Slot:4b}].id
data modify block ~ ~ ~ Items[{Slot:5b}].id set from storage ckenja.reversible: reflect.Items[{Slot:5b}].id
data modify block ~ ~ ~ Items[{Slot:6b}].id set from storage ckenja.reversible: reflect.Items[{Slot:6b}].id
data modify block ~ ~ ~ Items[{Slot:6b}].id set from storage ckenja.reversible: reflect.Items[{Slot:6b}].id
data modify block ~ ~ ~ Items[{Slot:7b}].id set from storage ckenja.reversible: reflect.Items[{Slot:7b}].id
data modify block ~ ~ ~ Items[{Slot:8b}].id set from storage ckenja.reversible: reflect.Items[{Slot:8b}].id
data modify block ~ ~ ~ Items[{Slot:10b}].id set from storage ckenja.reversible: reflect.Items[{Slot:10b}].id
data modify block ~ ~ ~ Items[{Slot:11b}].id set from storage ckenja.reversible: reflect.Items[{Slot:11b}].id
data modify block ~ ~ ~ Items[{Slot:12b}].id set from storage ckenja.reversible: reflect.Items[{Slot:12b}].id
data modify block ~ ~ ~ Items[{Slot:13b}].id set from storage ckenja.reversible: reflect.Items[{Slot:13b}].id
data modify block ~ ~ ~ Items[{Slot:14b}].id set from storage ckenja.reversible: reflect.Items[{Slot:14b}].id
data modify block ~ ~ ~ Items[{Slot:15b}].id set from storage ckenja.reversible: reflect.Items[{Slot:15b}].id
data modify block ~ ~ ~ Items[{Slot:16b}].id set from storage ckenja.reversible: reflect.Items[{Slot:16b}].id
data modify block ~ ~ ~ Items[{Slot:17b}].id set from storage ckenja.reversible: reflect.Items[{Slot:17b}].id
data modify block ~ ~ ~ Items[{Slot:18b}].id set from storage ckenja.reversible: reflect.Items[{Slot:18b}].id
data modify block ~ ~ ~ Items[{Slot:19b}].id set from storage ckenja.reversible: reflect.Items[{Slot:19b}].id
data modify block ~ ~ ~ Items[{Slot:20b}].id set from storage ckenja.reversible: reflect.Items[{Slot:20b}].id
data modify block ~ ~ ~ Items[{Slot:21b}].id set from storage ckenja.reversible: reflect.Items[{Slot:21b}].id
data modify block ~ ~ ~ Items[{Slot:22b}].id set from storage ckenja.reversible: reflect.Items[{Slot:22b}].id
data modify block ~ ~ ~ Items[{Slot:23b}].id set from storage ckenja.reversible: reflect.Items[{Slot:23b}].id
data modify block ~ ~ ~ Items[{Slot:24b}].id set from storage ckenja.reversible: reflect.Items[{Slot:24b}].id
data modify block ~ ~ ~ Items[{Slot:25b}].id set from storage ckenja.reversible: reflect.Items[{Slot:25b}].id
data modify block ~ ~ ~ Items[{Slot:26b}].id set from storage ckenja.reversible: reflect.Items[{Slot:26b}].id

execute store result score #length ckenja.reversible run data get storage ckenja.reversible: reflect.Items
execute if score #length ckenja.reversible matches 1.. run playsound minecraft:block.sculk_sensor.clicking_stop master @a ~ ~ ~ 1 1
execute if score #length ckenja.reversible matches 3.. run playsound minecraft:block.sculk_sensor.clicking_stop master @a ~ ~ ~ 1 1
execute if score #length ckenja.reversible matches 5.. run playsound minecraft:block.sculk_sensor.clicking_stop master @a ~ ~ ~ 1 0.7
execute if score #length ckenja.reversible matches 7.. run playsound minecraft:block.sculk_sensor.clicking_stop master @a ~ ~ ~ 1 1.26
data remove storage ckenja.reversible: reflect.Items