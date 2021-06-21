# Lock players in sightline
execute as @a[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function sightlock:poslock/lock

# Take next step
# Will not take step if wall is reached
# CAN pass through multiple players at once
execute positioned ^ ^ ^0.5  if block ~ ~ ~ air run function sightlock:sightline/step