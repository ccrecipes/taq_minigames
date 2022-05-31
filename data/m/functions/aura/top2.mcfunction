tellraw @a[tag=m_player,tag=!m_aura_dead] ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Only ","color":"green"},{"text":"2","bold":true,"color":"green"},{"text":" more people alive!","color":"green"},{"text":" +","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_aura_topPoints"},"bold":true,"color":"dark_green"},{"text":" emeralds!","color":"green"}]


execute as @a[tag=m_player,tag=!m_aura_dead] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players operation @a[tag=m_player,tag=!m_aura_dead] m_display_score += $game m_aura_topPoints