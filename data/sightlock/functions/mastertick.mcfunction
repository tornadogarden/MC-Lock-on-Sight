# Create new id for new players for poslock
execute as @a unless score @s posLockID matches 0.. run function sightlock:poslock/new_id

# Reset tags to unlock players outside of sightline
tag remove @a poslock

# 