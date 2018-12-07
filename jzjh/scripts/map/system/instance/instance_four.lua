---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/5 9:30
---

--- FB4 绝情谷+绝情谷谷底
local set = require 'util.collection.set'

--- {南海神尼}：{九阴真经·易筋锻骨篇}
drop_item({ 1852140642 }, { [1227897161] = 100 })

--- {公孙止}：{影岚护符、饮血枪、乾坤丹}
drop_item(1852207221, { [1227895089] = 40, [1227895091] = 35, [1227895371] = 25 })

--- {裘千仞}：{玉修护符、君子剑}
drop_item(1852663666, { [1227895090] = 5, [1227897145] = 95 })

--- {裘千尺}：{易筋洗髓丹、淑女剑}
drop_item(1852335728, { [1227895372] = 5, [1227897153] = 95 })

--- {长须老鬼}：{烈火衣、霓云手套、追月手、云海链}
drop_item(1852996194, { [1227895092] = 25, [1227895093] = 25, [1227894874] = 25, [1227895088] = 25 })

--- 有玩家进入副本4
enter_instance_listener {
    num = 4,
    item_id = 1227895881,
    name = '绝情谷',
    gold = 3000,
    practice = 3,
    practice_point = et.point(-3472.0, 64.0),
    enter_point = et.point(-15168.0, -6464.0),
    mystery_point = et.point(-14816.0, -4848.0),
    mystery_set = set:new { 1852140642, 1852335728, 1852663666, },
    rare_drop_set = set:new { 1227895859, 1227895858, 1227895092, },
    npc_set = set:new { 1865429076, 1865429558 },
    npc_point_set = set:new {
        et.point(-13040.0, -2032.0),
    },
}

--- 稀有掉落
et.game:event '单位-死亡'(function(self, killer, killed)
    if et.rect.j_rect(rect_instance_four):contains_unit(killer) and commonutil.random(0, 100) <= 2 then
        if instance_info[4].rare_drop_id then
            local x, y = killed:get_point():get()
            et.item:new(instance_info[4].rare_drop_id, x, y)
        end
    end
end)

--- 购买绝情谷底丹药
--- @param u unit
--- @param it item
et.game:event '单位-捡起物品'(function(self, u, it)
    if is_in(it:get_id(), { 1227895885, 1227895884, 1227895883 }) then
        local p = u:get_owner()
        if not u:is_hero() then
            p:add_gold(20)
            p:send_message("|CFFFF0000该道具只能由主角亲自购买")
            return
        end
        if it:get_id() == 1227895885 then
            u:add_item(1227895371)
        end
        if it:get_id() == 1227895884 then
            u:add_item(1227895372)
        end
        if it:get_id() == 1227895883 then
            u:add_item(1227895374)
        end
    end
end)

local species_counter = 0

local pellet_set = set:new { 1227895889, 1227895887, 1227895886, 1227895888 }
--- 绝情谷底杀异种
--- @param killer unit
--- @param killed unit
et.game:event '单位-死亡'(function(self, killer, killed)
    if killed:get_type_id() == 1852665959 then
        species_counter = species_counter + 1
        if species_counter >= 7 then
            species_counter = 0
            local x, y = killed:get_point():get()
            et.item:new(pellet_set:random(), x, y)
        else
            killer:get_owner():send_message("下次出现灵丹：" .. species_counter .. " / 7")
        end
    end
end)

--- 进入绝情谷底
--- @param u unit
--- @param it item
et.game:event '单位-捡起物品'(function(self, u, it)
    if it:get_id() ~= 1227895882 then
        return
    end
    local p = u:get_owner()
    local h = p.hero
    if not u:is_hero() then
        p:send_message("|cFFFFCC00只能由主角亲自前往")
        return
    end
    if h.reputation < 3000 or h['胆魄'] < 20 then
        p:send_message("|cffff0000进入绝情谷底条件：\n胆魄20，江湖声望3000")
        return
    end
    u:set_point(rect_valley_bottom_start:get_center())
    p:set_camera(rect_valley_bottom_start:get_center())
    p:send_message("|cFFADFF2F进入绝情谷底")
end)

