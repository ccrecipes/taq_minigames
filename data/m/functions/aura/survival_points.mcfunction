tellraw @s ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"+","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_aura_s_points"},"bold":true,"color":"dark_green"},{"text":" emeralds for surviving!","color":"green"}]

playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players operation @s m_display_score += $game m_aura_s_points