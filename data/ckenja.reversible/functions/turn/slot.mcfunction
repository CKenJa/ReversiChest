#スロット移動
#tellraw @a {"score":{"name":"#slot","objective":"ckenja.reversible"}}
function #ckenja.reversible:turn/callback/move
scoreboard players operation $Move ArrayUtilInput = #turn ckenja.reversible
function array_util:api/move
#nullチェック
data modify storage ckenja.reversible: temp set from storage ckenja.reversible: null
execute store result score #notNull ckenja.reversible run data modify storage ckenja.reversible: temp.id set from storage array_util: Array[-1].id
#同じ?
data modify storage ckenja.reversible: temp.id set from storage ckenja.reversible: serialize.diff.output[-1].id
execute store result score #notEqual ckenja.reversible run data modify storage ckenja.reversible: temp.id set from storage array_util: Array[-1].id
function array_util:api/revert
#同じでstore内にひっくり返せるslotがあるならひっくり返す
execute if score #notEqual ckenja.reversible matches 0 if data storage ckenja.reversible: turn.store run function ckenja.reversible:turn/turn
#同じでないかつnullでないかつ有効範囲内ならstoreして次へ
execute if score #notEqual ckenja.reversible matches 1 if score #notNull ckenja.reversible matches 1 run function #ckenja.reversible:turn/callback/can_move