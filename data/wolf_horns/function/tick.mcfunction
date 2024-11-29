
# todo: show action bar with how many dogs would be affected and color changing sneak indicator

execute as @a[nbt={SelectedItem:{id:"minecraft:goat_horn", components: {"minecraft:enchantments":{"wolf_horns:call_of_the_wild":1}}}}] run say cotw 1
execute as @a[nbt={SelectedItem:{id:"minecraft:goat_horn", components: {"minecraft:enchantments":{"wolf_horns:call_of_the_wild":2}}}}] run say cotw 2
execute as @a[nbt={SelectedItem:{id:"minecraft:goat_horn", components: {"minecraft:enchantments":{"wolf_horns:call_of_the_wild":3}}}}] run say cotw 3

# todo: doesnt work lol
# todo: enchantment table doesnt show the enchantment
# todo: add lang file for german and lolcat/piratespeech
# todo: add to loot tables for tail chambers
# todo: add achievements for enchanting and using the horn
# todo: add schedule to prevent spamming (multiple runs per use) => example: /schedule function wolf_horns:sit 1s replace