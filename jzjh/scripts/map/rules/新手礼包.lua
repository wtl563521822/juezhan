---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 0029 20:55
---

--新手大礼包

local function init()
    -- 新手大礼包
    et.game:event '单位-使用物品'(function(self, u, item)
        if u:get_owner():is_player() and item:get_id() == 1227896394 then
            local rand = commonutil.random(0, 4)
            local p = u:get_owner()
            if rand < 1 then
                p:add_gold(20000)
                p:send_message("|cFFFFCC00使用新手大礼包获得金钱+20000")
            elseif rand < 2 then
                u:add_item(udg_jianghu[GetRandomInt(1, 18)])
                p:send_message("|cFFFFCC00使用新手大礼包获得随机江湖武功")
            elseif rand < 3 then
                u:add_ability(1093679441)
                p:send_message("|cFFFFCC00使用新手大礼包获得神行状态")
                et.wait(300 * 1000, function()
                    u:remove_ability(u, 1093679441)
                    p:send_message("|cFFFF0000失去神行效果")
                end)
            else
                -- TODO 替换万能属性系统调用
                YDWEGeneralBounsSystemUnitSetBonus(u.handle, 3, 0, 20000)
                p:send_message("|cFFFFCC00使用新手大礼包获得狂暴状态")
                et.wait(120 * 1000, function()
                    YDWEGeneralBounsSystemUnitSetBonus(u.handle, 3, 1, 20000)
                    p:send_message("|cFFFF0000失去狂暴效果")
                end)
            end
        end
    end)

end

init()