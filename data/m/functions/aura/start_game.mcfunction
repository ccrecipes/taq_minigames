kill @e[tag=m_selector_aura]
scoreboard players set $game m_nextgame 0
scoreboard players set $game m_aura_timer 0
scoreboard players set $game m_aura_running 1

scoreboard players set $game m_aura_s_points 2
scoreboard players set $game m_aura_topPoints 3

scoreboard players set $game m_aura_round 1


scoreboard players operation $game m_aura_s_points *= $game m_p_multiplier
scoreboard players operation $game m_aura_topPoints *= $game m_p_multiplier


tp @a -43 4 144

tellraw @a ["",{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"dark_aqua"},{"text":"\n\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 "},{"text":"Aura & Volley","bold":true,"color":"aqua"},{"text":"\n \u0020 \u0020"},{"text":"Survive as long as you can by jumping\n \u0020 \u0020over Auras and sneaking under Volleys\n\n \u0020 \u0020Auras and Volley get more frequent over\n \u0020 \u0020time and jumpboost will decrease over time","color":"yellow"},{"text":"\n\n"},{"text":"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-","color":"dark_aqua"}]