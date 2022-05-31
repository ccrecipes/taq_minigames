kill @e[tag=m_selector_skyisland]
scoreboard players set $game m_nextgame 0
scoreboard players set $game m_sky_timer 0
scoreboard players set $game m_sky_running 1

scoreboard players set $game m_sky_t1_points 2
scoreboard players set $game m_sky_t2_points 3
scoreboard players set $game m_sky_t3_points 4
scoreboard players set $game m_sky_t4_points 5
scoreboard players set $game m_sky_m_points 5
scoreboard players set $game m_sky_1st_points 1


scoreboard players operation $game m_sky_t1_points *= $game m_p_multiplier
scoreboard players operation $game m_sky_t2_points *= $game m_p_multiplier
scoreboard players operation $game m_sky_t3_points *= $game m_p_multiplier
scoreboard players operation $game m_sky_t4_points *= $game m_p_multiplier
scoreboard players operation $game m_sky_m_points *= $game m_p_multiplier
scoreboard players operation $game m_sky_1st_points *= $game m_p_multiplier


scoreboard players set $game m_sky_minutex0 1
scoreboard players set $game m_sky_minute0x 0
scoreboard players set $game m_sky_secondx0 0
scoreboard players set $game m_sky_second0x 0


tp @a -10010 31 -9981

tellraw @a ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"dark_aqua"},{"text":"\n\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020"},{"text":"Sky Island Lootrun","bold":true,"color":"aqua"},{"text":" \n \u0020 \u0020"},{"text":"Locate chests in the authentic sky island\n \u0020 lootrun route. Clicking on chests will grant\n \u0020 \u0020emeralds. Completing the whole route will\n \u0020 \u0020 \u0020 \u0020 \u0020 grant additional emeralds.","color":"yellow"},{"text":"\n\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"dark_aqua"}]


fill -10006 32 -9986 -10006 34 -9986 minecraft:barrier
fill -10005 34 -9985 -10005 32 -9985 minecraft:barrier
fill -10003 34 -9983 -10003 32 -9983 minecraft:barrier
fill -10002 34 -9982 -10002 32 -9982 minecraft:barrier
fill -10008 32 -9988 -10008 36 -9988 minecraft:barrier
fill -10009 36 -9989 -10009 32 -9989 minecraft:barrier