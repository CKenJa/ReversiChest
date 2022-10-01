summon marker ~ ~ ~ {Tags:["ckenja.reversible"]}
setblock ~ ~ ~ minecraft:chest[facing=north,type=right,waterlogged=false]{CustomName:'{"text":"オセロチェスト"}'}
#setblock ~-1 ~ ~ minecraft:chest[facing=north,type=left,waterlogged=false]
execute as @e[type=marker,tag=ckenja.reversible,distance=..1,sort=nearest] run function #oh_my_dat:please
function ckenja.reversible:past