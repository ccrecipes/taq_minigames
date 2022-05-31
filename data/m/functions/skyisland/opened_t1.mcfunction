tellraw @s ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Tier 1 chest found! ","color":"green"},{"text":"+","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_sky_t1_points"},"bold":true,"color":"dark_green"},{"text":" emeralds!","color":"green"}]

scoreboard players operation @s m_display_score += $game m_sky_t1_points

playsound entity.experience_orb.pickup master @s ~ ~ ~

execute as @s[predicate=m:sky_mythic_chance] at @s run function m:skyisland/mythic_found