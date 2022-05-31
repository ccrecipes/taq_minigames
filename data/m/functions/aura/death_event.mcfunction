tag @s add m_aura_dead

tellraw @s ["",{"text":"You have died... ","bold":true,"color":"dark_red"},{"text":"\n"},{"text":"2 soul points have been lost...","color":"gray"}]

tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" skill issued!","color":"gold"}]

gamemode spectator @s

execute as @a[tag=m_player,tag=!m_aura_dead] run function m:aura/survival_points

scoreboard players set $game m_aura_alive 0
execute as @a[tag=m_player,tag=!m_aura_dead] run scoreboard players add $game m_aura_alive 1

execute if score $game m_aura_alive matches 3 run function m:aura/top3 
execute if score $game m_aura_alive matches 2 run function m:aura/top2
execute if score $game m_aura_alive matches 1 run function m:aura/top1