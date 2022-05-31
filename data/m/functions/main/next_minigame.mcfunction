title @a times 20 100 20

title @a subtitle {"text":"The next minigame is being chosen...","bold":true,"color":"yellow"}

title @a title ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]

scoreboard players set $game m_lobby_timer 0

scoreboard players set $game m_nextgame 1

scoreboard players add $game m_games_played 1


execute if score $game m_games_played matches 2 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" 1.5x","bold":true,"color":"aqua"},{"text":" Emerald Multiplier for next minigame!","color":"green"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]
execute if score $game m_games_played matches 2 run scoreboard players set $game m_p_multiplier 15

execute if score $game m_games_played matches 3 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" 2.0x","bold":true,"color":"aqua"},{"text":" Emerald Multiplier for next minigame!","color":"green"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]
execute if score $game m_games_played matches 3 run scoreboard players set $game m_p_multiplier 20


execute if score $game m_games_played matches 4 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" 2.5x","bold":true,"color":"aqua"},{"text":" Emerald Multiplier for next minigame!","color":"green"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]
execute if score $game m_games_played matches 4 run scoreboard players set $game m_p_multiplier 25


execute if score $game m_games_played matches 5 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" 3.0x","bold":true,"color":"aqua"},{"text":" Emerald Multiplier for next minigame!","color":"green"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]
execute if score $game m_games_played matches 5 run scoreboard players set $game m_p_multiplier 30
