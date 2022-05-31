tellraw @a[tag=m_player,tag=!m_aura_dead] ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Last man standing!","color":"green"},{"text":" +","bold":true,"color":"green"},{"score":{"name":"$game","objective":"m_aura_topPoints"},"bold":true,"color":"dark_green"},{"text":" emeralds!","color":"green"}]


execute as @a[tag=m_player,tag=!m_aura_dead] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

scoreboard players operation @a[tag=m_player,tag=!m_aura_dead] m_display_score += $game m_aura_topPoints

execute if score $game m_aura_round matches 3 run function m:aura/end_game
execute if score $game m_aura_round matches 2 run function m:aura/round3
execute if score $game m_aura_round matches 1 run function m:aura/round2

