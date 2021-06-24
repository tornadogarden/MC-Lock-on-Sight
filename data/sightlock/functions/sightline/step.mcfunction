# Tag self as targeting
tag @s add targeting

# Lock players in sightline
execute as @a[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add targeted
# Beam effect
execute as @a[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] as @p[tag=targeting] at @s run function sightlock:sightline/locked_on

# Take next step
# Will not take step if wall is reached
# CAN pass through multiple players at once
execute positioned ^ ^ ^0.5 if block ~ ~ ~ air run function sightlock:sightline/step
tag @s remove targeting
