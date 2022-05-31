tp @a -9976 67 -9928
gamemode adventure @a[tag=m_player]
tellraw @a {"text":"Restarting...","color":"red"}
tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" You can not continue lootrunning due to the world restarting","color":"yellow"},{"text":" [","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"}]

tag @a remove m_sky_chest0_t1
tag @a remove m_sky_chest1_t1
tag @a remove m_sky_chest2_t1
tag @a remove m_sky_chest3_t2
tag @a remove m_sky_chest4_t1
tag @a remove m_sky_chest5_t3
tag @a remove m_sky_chest6_t2
tag @a remove m_sky_chest7_t3
tag @a remove m_sky_chest8_t2
tag @a remove m_sky_chest9_t2
tag @a remove m_sky_chest10_t2
tag @a remove m_sky_chest11_t4


summon area_effect_cloud -9976 67 -9928 {Radius:0f,Duration:225,Tags:["m_sky_end","m_player"]}
