# Draw trail
particle dust 1.0 0.0 0.0 1 ~ ~-0.25 ~ 0 0 0 0 0 normal @a

# Keep going until hitting an object
execute positioned ^ ^ ^1 if block ~ ~ ~ air run function sightlock:sightline/locked_on
