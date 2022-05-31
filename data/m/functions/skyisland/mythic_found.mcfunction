tellraw @s ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"You have found a mythic! ","color":"green"},{"text":"+","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_sky_m_points"},"bold":true,"color":"dark_green"},{"text":" emeralds!","color":"green"}]

tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has found a mythic!","color":"light_purple"}]

playsound ui.toast.challenge_complete master @s ~ ~ ~

scoreboard players operation @s m_display_score += $game m_sky_m_points

particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 1 100 force