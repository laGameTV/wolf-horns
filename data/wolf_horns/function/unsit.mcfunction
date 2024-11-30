# Revoke the sit advancement
advancement revoke @s only wolf_horns:function/unsit

# Load uuid into storage
function wolf_horns:helper/uuid

# Set the range based on the level of the enchantment via storage from config
execute store result storage wolf_horns:main args.RANGE int 1 run scoreboard players get cotw_range wh_config
execute store result storage wolf_horns:main args.LIMIT int 1 run scoreboard players get cotw_limit wh_config

# Execute the sit macro
function wolf_horns:macro/unsit with storage wolf_horns:main args