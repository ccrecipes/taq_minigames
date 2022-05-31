tellraw @a ["",{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"]","color":"gold"},{"text":" The event was stopped manually!","color":"dark_red"}]

kill @e[tag=m_selector]


scoreboard players set $game m_event_running 0
scoreboard players set $game m_nextgame 0
scoreboard players set $game m_games_played 0

scoreboard players set @a m_display_score 0

scoreboard players set $game m_p_multiplier 10

scoreboard players set $game m_exca_running 0
scoreboard players set $game m_aura_running 0
scoreboard players set $game m_race_running 0
scoreboard players set $game m_sky_running 0
scoreboard players set $game m_soup_running 0

scoreboard objectives setdisplay sidebar

tag @a remove m_player