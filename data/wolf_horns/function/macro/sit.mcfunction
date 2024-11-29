# execute at @s as @e[type=wolf,distance=..10,nbt={Owner:[I;1374751997,1118915143,-1576894898,1509201497]}] run data merge entity @s {Sitting:1b}
$execute at @s as @e[type=wolf,distance=..$(RANGE),nbt={Owner:[I;$(UUID0),$(UUID1),$(UUID2),$(UUID3)]}] run data merge entity @s {Sitting:1b}

$say All wolfs in a $(RANGE) block range have been told to sit.