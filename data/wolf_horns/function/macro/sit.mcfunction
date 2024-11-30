$execute store result score @s wh_count run execute if entity @e[type=wolf,distance=..$(RANGE),limit=$(LIMIT),sort=nearest,nbt={Owner:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)],Sitting:0b}]

$execute at @s as @e[type=wolf,distance=..$(RANGE),limit=$(LIMIT),sort=nearest,nbt={Owner:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)],Sitting:0b}] at @s run particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0 0 0 0.00001 1 normal @e[type=player,nbt={UUID:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)]}]
$execute at @s as @e[type=wolf,distance=..$(RANGE),limit=$(LIMIT),sort=nearest,nbt={Owner:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)],Sitting:0b}] run data merge entity @s {Sitting:1b}

title @s times 1s 5s 1s
execute if score @s wh_count matches 1.. run advancement grant @s only wolf_horns:use
$execute if score @s wh_count matches 1 run title @s actionbar ["",{"score":{"name":"@s","objective":"wh_count"},"color":"aqua"},{"text":" Wolf","color":"aqua"},{"text":" within ","color":"gray"},{"text":"$(RANGE) blocks","color":"aqua"},{"text":" have been told to ","color":"gray"},{"text":"sit","color":"aqua"},{"text":".","color":"gray"}]
$execute if score @s wh_count matches 2.. run title @s actionbar ["",{"score":{"name":"@s","objective":"wh_count"},"color":"aqua"},{"text":" Wolfs","color":"aqua"},{"text":" within ","color":"gray"},{"text":"$(RANGE) blocks","color":"aqua"},{"text":" have been told to ","color":"gray"},{"text":"sit","color":"aqua"},{"text":".","color":"gray"}]

scoreboard players reset @s wh_count