title @a actionbar ["",{"score":{"name":"$game","objective":"m_sky_minutex0"},"color":"green"},{"score":{"name":"$game","objective":"m_sky_minute0x"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"$game","objective":"m_sky_secondx0"},"color":"green"},{"score":{"name":"$game","objective":"m_sky_second0x"},"color":"green"}]

execute if score $game m_sky_tick matches 20.. run scoreboard players remove $game m_sky_second0x 1
execute if score $game m_sky_tick matches 20.. if score $game m_sky_second0x matches -1 run scoreboard players remove $game m_sky_secondx0 1
execute if score $game m_sky_tick matches 20.. if score $game m_sky_second0x matches -1 run scoreboard players set $game m_sky_second0x 9

execute if score $game m_sky_tick matches 20.. if score $game m_sky_secondx0 matches -1 run scoreboard players remove $game m_sky_minute0x 1
execute if score $game m_sky_tick matches 20.. if score $game m_sky_secondx0 matches -1 run scoreboard players set $game m_sky_secondx0 5

execute if score $game m_sky_tick matches 20.. if score $game m_sky_minute0x matches -1 run scoreboard players remove $game m_sky_minutex0 1
execute if score $game m_sky_tick matches 20.. if score $game m_sky_minute0x matches -1 run scoreboard players set $game m_sky_minute0x 9

execute if score $game m_sky_tick matches 20.. run scoreboard players set $game m_sky_tick 0

scoreboard players add $game m_sky_tick 1