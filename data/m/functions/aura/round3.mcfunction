scoreboard players set $game m_aura_moving 0

scoreboard players set $game m_aura_round 3

tp @a[tag=m_player] -43 4 144
gamemode adventure @a[tag=m_player]
tag @a remove m_aura_dead

tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Round 3","bold":true,"color":"yellow"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]

kill @e[tag=m_aura_move]

scoreboard players set $game m_aura_timer 0