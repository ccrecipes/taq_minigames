scoreboard players set $game m_aura_moving 0

scoreboard players set $game m_aura_round 0

tp @a[tag=m_player] -43 4 144
gamemode adventure @a[tag=m_player]
tag @a remove m_aura_dead

tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"War over! You have sucessfully taken this territory","bold":true,"color":"yellow"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]

kill @e[tag=m_aura_move]

summon area_effect_cloud -43 4 144 {Radius:0f,Duration:225,Tags:["m_aura_end","m_player"]}


