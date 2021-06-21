# Teleport locked players
execute at @a[tag=poslock] as @e[tag=poslock,type=area_effect_cloud] if score @s posLockID = @p posLockID run tp @p @s

# Effects for locked players
effect give @a[tag=poslock] levitation 2 255 true
effect give @a[tag=poslock] glowing 2 0 true

# These allow us to lock players just by tagging them.
# Not the most efficient, but it works.
# Unlock players if tag is removed
execute as @a[tag=!poslock] at @e[tag=poslock,type=area_effect_cloud] if score @s posLockID = @e[tag=poslock,type=area_effect_cloud,limit=1,sort=nearest] posLockID run function poslock/unlock

# Lock players if tag is added
execute as @a[tag=poslock] at @e[tag=poslock,type=area_effect_cloud] unless score @s posLockID = @e[tag=poslock,type=area_effect_cloud,limit=1,sort=nearest] posLockID run function poslock/lock

# Kill clouds without players to lock
execute as @e[tag=poslock,type=area_effect_cloud] at @a unless score @s posLockID = @p posLockID run kill @s
