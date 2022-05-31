scoreboard players add $game m_aura_timer 1
execute if score $game m_aura_moving matches 1 run scoreboard players add $game m_aura_freq 1

execute as @e[tag=m_aura] at @s run particle flame ~ ~.2 ~ 20 0 0 0 100 force
execute as @e[tag=m_volley] at @s run particle soul_fire_flame ~ ~ ~ 20 0 0 0 100 force


execute as @e[tag=m_aura_center] at @s run kill @e[tag=m_aura_move,distance=35..]

execute as @a[tag=m_player,tag=!m_aura_dead] store result score @s m_aura_PosZ run data get entity @s Pos[2] 
execute as @e[tag=m_aura_move] store result score @s m_aura_PosZ run data get entity @s Pos[2] 

execute as @e[tag=m_aura] at @s run tp @s ~ ~ ~-.2
execute as @e[tag=m_volley] at @s run tp @s ~ ~ ~-.2


execute as @a[tag=!m_aura_dead] at @s if score @s m_aura_PosZ = @e[tag=m_aura,limit=1,sort=nearest] m_aura_PosZ unless block ~ ~-.2 ~ air run function m:aura/death_event

execute as @a[tag=!m_aura_dead] at @s if score @s m_aura_PosZ = @e[tag=m_volley,limit=1,sort=nearest] m_aura_PosZ unless score @s m_aura_sneak matches 1.. unless block ~ ~-.1 ~ air run function m:aura/death_event
execute as @a[tag=!m_aura_dead] at @s if score @s m_aura_PosZ = @e[tag=m_volley,limit=1,sort=nearest] m_aura_PosZ if block ~ ~-.1 ~ air unless block ~ ~-2 ~ air run function m:aura/death_event


execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 20 run effect give @a[tag=m_player,tag=!m_aura_dead] jump_boost 100000 5 true

#timings
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 200 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Game starts in 10 seconds!","bold":true,"color":"green"}]

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 300 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Game starts in 5 seconds!","bold":true,"color":"green"}]

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 340 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Game starts in 3 seconds!","bold":true,"color":"green"}]
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 340 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 360 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Game starts in 2 seconds!","bold":true,"color":"green"}]
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 360 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 380 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Game starts in 1 seconds!","bold":true,"color":"green"}]
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 380 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 400 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Good Luck!","bold":true,"color":"green"}]
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 400 as @a at @s run playsound entity.player.levelup master @s ~ ~ ~

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 400 run scoreboard players set $game m_aura_moving 1

#first phase
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 401..1600 if score $game m_aura_freq matches 100 run function m:aura/spawn_aura
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 401..1600 if score $game m_aura_freq matches 140 run function m:aura/spawn_volley

#second phase

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" The tower is getting stronger!","bold":true,"color":"aqua"},{"text":"\n\n","bold":true},{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Your jumpheight food is weakening!","bold":true,"color":"#2CE82B"}]
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601 run effect clear @a[tag=m_player] jump_boost
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601 run effect give @a[tag=m_player] jump_boost 1000000 2 true


execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601..2800 if score $game m_aura_freq matches 60 run function m:aura/spawn_aura
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601..2800 if score $game m_aura_freq matches 100 run function m:aura/spawn_volley
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 1601..2800 if score $game m_aura_freq matches 120 run function m:aura/spawn_aura

#third phase

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801 run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" The tower is getting stronger!","bold":true,"color":"aqua"},{"text":"\n\n","bold":true},{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"gold"},{"text":" Your jumpheight food is weakening!","bold":true,"color":"#2CE82B"}]

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801 run effect clear @a[tag=m_player] jump_boost

execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801.. if score $game m_aura_freq matches 40 run function m:aura/spawn_aura
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801.. if score $game m_aura_freq matches 80 run function m:aura/spawn_volley
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801.. if score $game m_aura_freq matches 100 run function m:aura/spawn_aura
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801.. if score $game m_aura_freq matches 120 run function m:aura/spawn_volley
execute if score $game m_aura_running matches 1 if score $game m_aura_timer matches 2801.. if score $game m_aura_freq matches 135 run function m:aura/spawn_aura




execute if score $game m_aura_freq matches 141.. run scoreboard players set $game m_aura_freq 0
scoreboard players set @a m_aura_sneak 0


execute as @e[tag=m_aura_end,nbt={Age:20}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting back to lobby in 10 seconds!","color":"red"}]

execute as @e[tag=m_aura_end,nbt={Age:120}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting back to lobby in 5 seconds!","color":"red"}]

execute as @e[tag=m_aura_end,nbt={Age:160}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting back to lobby in 3 seconds!","color":"red"}]

execute as @e[tag=m_aura_end,nbt={Age:180}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting back to lobby in 2 seconds!","color":"red"}]

execute as @e[tag=m_aura_end,nbt={Age:200}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting back to lobby in 1 seconds!","color":"red"}]

execute as @e[tag=m_aura_end,nbt={Age:220}] run tellraw @a ["",{"text":"[","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"},{"text":"] ","bold":true,"color":"gold"},{"text":"Teleporting...","color":"red"}]
execute as @e[tag=m_aura_end,nbt={Age:220}] run tp @e[tag=m_player] -530 5 -363



execute as @e[tag=m_aura_end,nbt={Age:221}] run scoreboard players set $game m_aura_running 0