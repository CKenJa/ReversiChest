scoreboard players remove #slot ckenja.reversible 1
execute if score #slot ckenja.reversible matches 1.. run function ckenja.reversible:serialize/null
data modify storage ckenja.reversible: serialize.output append value {id:"null"}