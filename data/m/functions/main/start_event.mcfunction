gamemode adventure @a[gamemode=survival]
effect give @a[gamemode=adventure] resistance 100000 255 true


title @a times 20 100 20
title @a subtitle {"text":"To TAq Minigames!","bold":true,"color":"green"}
title @a title [{"text":"Welcome","bold":true,"color":"dark_green"}]

tag @a[gamemode=adventure] add m_player

scoreboard objectives setdisplay sidebar m_display_score

scoreboard players set $game m_event_running 1

#summon the minigame selector armor stands under the lobby

summon armor_stand -536.5 9 -399.5 {Tags:["m_selector_racing","m_selector"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{race:1b,SkullOwner:{Id:[I;-805621203,-833404793,-1385099763,-1626604039],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ZkNjRmZDAxZWFlNGIxMjZmOWZhZTU4NjgwNDE5MmM0MmRhOGE3ZTNjYmEwOGExOGVhMmM0MGQwYTNkNDk3ZSJ9fX0="}]}}}}]}

summon armor_stand -536.5 9 -401.5 {Tags:["m_selector_excavation","m_selector"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{excavation:1b,SkullOwner:{Id:[I;1977985014,436684096,-1866408335,2027665026],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE0MThlOTA5NjFlZWNkZTg3ZmFmOTQ3YTVhMDFjZmJmNWU5Njg0Y2M5ODJhMjUzNGMxMjBiYTJhYzRmYTA2YyJ9fX0="}]}}}}]} 

summon armor_stand -536.5 9 -403.5 {Tags:["m_selector_soup","m_selector"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{soup:1b,SkullOwner:{Id:[I;-1919885930,-1950920779,-1673271704,-1584163923],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODJlNjQyYmE2N2IwYmFkNWY3YWU5NTlhMjQ3YzlhZDFlYzRhOGM2MjQxNGJkZTU2YTgxMDY0Y2Q4YWY2OTE4YSJ9fX0="}]}}}}]} 

summon armor_stand -534.5 9 -403.5 {Tags:["m_selector_skyisland","m_selector"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{skyisland:1b,SkullOwner:{Id:[I;364823317,-2128723138,-1501184740,1646658804],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDUyOGVkNDU4MDI0MDBmNDY1YjVjNGUzYTZiN2E5ZjJiNmE1YjNkNDc4YjZmZDg0OTI1Y2M1ZDk4ODM5MWM3ZCJ9fX0="}]}}}}]} 

summon armor_stand -534.5 9 -401.5 {Tags:["m_selector_aura","m_selector"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{aura:1b,SkullOwner:{Id:[I;-1127436681,180833488,-2128164608,1920737827],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDljMTgzMmU0ZWY1YzRhZDljNTE5ZDE5NGIxOTg1MDMwZDI1NzkxNDMzNGFhZjI3NDVjOWRmZDYxMWQ2ZDYxZCJ9fX0="}]}}}}]} 

