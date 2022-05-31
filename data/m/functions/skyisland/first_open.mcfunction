tellraw @s ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"First to open this chest! ","color":"green"},{"text":"+","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_sky_1st_points"},"bold":true,"color":"dark_green"},{"text":" emeralds!","color":"green"}]

scoreboard players operation @s m_display_score += $game m_sky_1st_points

playsound entity.experience_orb.pickup master @s ~ ~ ~