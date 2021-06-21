execute as @a unless score @s posLockID matches 0.. run function sightlock:poslock/new_id
execute at @a[tag=poslock] as @e[tag=poslock,type=area_effect_cloud] if score @s posLockID = @p posLockID run tp @p @s
effect give @a[tag=poslock] minecraft:levitation 2 255 true
execute as @a[tag=!poslock] at @e[tag=poslock,type=area_effect_cloud] if score @s posLockID = @e[tag=poslock,type=area_effect_cloud,limit=1,sort=nearest] posLockID run function poslock/unlock
execute as @a[tag=poslock] at @e[tag=poslock,type=area_effect_cloud] unless score @s posLockID = @e[tag=poslock,type=area_effect_cloud,limit=1,sort=nearest] posLockID run function poslock/lock
execute as @e[tag=poslock,type=area_effect_cloud] at @a unless score @s posLockID = @p posLockID run kill @s
