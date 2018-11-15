---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/15 20:26
---

local part_time = {}
et.part_time = part_time

setmetatable(part_time, part_time)
local mt = {}
part_time.__index = mt

mt['悟性'] = 0
mt['根骨'] = 0
mt['医术'] = 0
mt['胆魄'] = 0
mt['福缘'] = 0
mt['经脉'] = 0

function part_time.init()
    part_time[1227896913] = setmetatable({
        name = '炼丹师',
        ['医术'] = 5,
        hint = '|cffffff00恭喜成为炼丹师，获得医术+5',
    }, part_time)
    part_time[1227896915] = setmetatable({
        name = '锻造师',
        ['根骨'] = 5,
        hint = '|cffffff00恭喜成为锻造师，获得根骨+5',
    }, part_time)
    part_time[1227896915] = setmetatable({
        name = '兵器师',
        ['胆魄'] = 5,
        hint = '|cffffff00恭喜成为兵器师，获得胆魄+5',
    }, part_time)
    part_time[1227899188] = setmetatable({
        name = '鉴定师',
        ['悟性'] = 5,
        hint = '|cffffff00恭喜成为鉴定师，获得悟性+5',
    }, part_time)
    part_time[1227899189] = setmetatable({
        name = '练气师',
        ['经脉'] = 5,
        hint = '|cffffff00恭喜成为练气师，获得经脉+5',
    }, part_time)
    part_time[1227899190] = setmetatable({
        name = '寻宝师',
        ['福缘'] = 5,
        hint = '|cffffff00恭喜成为寻宝师，获得福缘+5',
    }, part_time)
    part_time[1227899190] = setmetatable({
        name = '丫鬟',
        ['悟性'] = 1,
        ['根骨'] = 1,
        ['医术'] = 1,
        ['胆魄'] = 1,
        ['福缘'] = 1,
        ['经脉'] = 1,
        hint = '|cffffff00恭喜成为丫鬟，获得全属性+1',
        gender_require = 0,
        fail_hint = '|cffffff00男性角色不可加入该副职',
    }, part_time)
    part_time[1227899190] = setmetatable({
        name = '精武师',
        ['悟性'] = 1,
        ['根骨'] = 1,
        ['医术'] = 1,
        ['胆魄'] = 1,
        ['福缘'] = 1,
        ['经脉'] = 1,
        hint = '|cffffff00恭喜成为精武师，获得全属性+1',
        gender_require = 1,
        fail_hint = '|cffffff00女性角色不可加入该副职',
    }, part_time)


end

return part_time