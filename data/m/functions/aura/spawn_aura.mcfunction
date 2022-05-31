title @a times 20 20 20
title @a subtitle ["",{"text":"/!\\","underlined":true,"color":"dark_red"},{"text":" Tower","color":"gray"},{"text":" Aura","color":"gold"}]
title @a title {"text":""}
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~

execute as @e[tag=m_aura_center] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["m_aura","m_aura_move"]}