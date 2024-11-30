# scoreboard objectives add wh_horn minecraft.used:minecraft.goat_horn
# scoreboard objectives add wh_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add wh_config dummy
scoreboard objectives add wh_count dummy
#  players set cotw_range wh_config 10
execute unless score cotw_range wh_config matches 1.. run scoreboard players set cotw_range wh_config 25
# scoreboard players set cotw_limit wh_config 10
execute unless score cotw_limit wh_config matches 1.. run scoreboard players set cotw_limit wh_config 500

say Loaded wolf_horns v1.0.0