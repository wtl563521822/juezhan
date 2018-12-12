---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/15 21:30
---

--[[
去掉了慕容单独学习内功的逻辑
]]



--------学习武功系统结束------
local function meet_conditions(h, kf)
    return h['胆魄'] >= kf.conditions['胆魄']
            and h['福缘'] >= kf.conditions['福缘']
            and h['根骨'] >= kf.conditions['根骨']
            and h['经脉'] >= kf.conditions['经脉']
            and h['悟性'] >= kf.conditions['悟性']
            and h['医术'] >= kf.conditions['医术']
end

local function already_learned(u, kf)
    u:get_owner():send_message("|CFFFF0033你已经拥有此武功了")
    u:add_item(kf.itemid)
end

-- 学习百胜神拳
local function learn_bai_sheng(hu, kf)
    local p = hu:get_owner()
    hu:add_ability(kf.abilityid)
    force.send_message("|CFFFF0033恭喜" .. p:get_name() .. "习得" .. jass.GetObjectName(kf.abilityid) or '')
    p:add_tech(1382576745)
end

local function show_one_hint(h, kf, attr)
    if h[attr] < kf.conditions[attr] then
        h:get_owner():send_message("|CFFFF0033" .. attr .. "缺少：" .. kf.conditions[attr] - h[attr])
    end
end

-- 条件不足无法学习的错误提示
local function show_fail_hint(h, kf)
    h:get_owner():send_message("|CFFFF0033学习条件不足")
    show_one_hint(h, kf, '胆魄')
    show_one_hint(h, kf, '福缘')
    show_one_hint(h, kf, '根骨')
    show_one_hint(h, kf, '经脉')
    show_one_hint(h, kf, '悟性')
    show_one_hint(h, kf, '医术')
end

-- 成为门派的长老
--- @param u unit
--- @param d dialog
--- @param dn string
--- @param ability_id number
local function become_elder(u, d, dn, ability_id)
    local p = u:get_owner()
    local h = p.hero
    p:send_message("|cff00FF66恭喜领悟技能：" .. (jass.GetObjectName(ability_id) or ""))
    h:add_kongfu(ability_id)
    force.send_message("|cff00FF66玩家" .. p.id .. "成为" .. dn .. "长老")
    p:set_name("〓" .. dn .. "长老〓" .. p:get_base_name())
    u:remove_item(1227895642)
    d:clear_and_destroy()
end

local function init()
    et.game:event '单位-使用物品'(function(self, u, item)
        --学习武功
        if et.lni.kungfu[item:get_id()] and u:get_owner().hero then
            LearnJiNeng(u.handle, item)
            local kf = et.lni.kungfu[item:get_id()]
            local p = u:get_owner()
            local h = p.hero
            local hu = h.handle
            if u:has_ability(kf.abilityid) then
                already_learned(u, kf)
            elseif meet_conditions(h, kf) then
                if kf.abilityid == 1093677905 then
                    learn_bai_sheng(hu, hf)
                else
                    if h:get_kongfu_num() > h.kongfu_limit then
                        p:send_message("|CFFFF0033学习技能已达上限，请先遗忘部分技能")
                        u:add_item(kf.itemid)
                    else
                        hu:add_ability(kf.abilityid)
                        h['武功'][kf.abilityid] = et.kungfu.create(kf.abilityid)
                        if h['遗忘武功'][kf.abilityid] then
                            h['武功'][kf.abilityid]['经验'] = h['遗忘武功'][kf.abilityid]['经验']
                            h['武功'][kf.abilityid]['重数'] = h['遗忘武功'][kf.abilityid]['重数']
                            h['遗忘武功'][kf.abilityid] = nil
                            force.send_message("|CFFFF0033恭喜" .. p:get_name() .. "想起" .. jass.GetObjectName(kf.abilityid) or '')
                        else
                            force.send_message("|CFFFF0033恭喜" .. p:get_name() .. "习得" .. jass.GetObjectName(kf.abilityid) or '')
                        end
                        if et.lni.internal[kf.abilityid] then
                            local itl = et.lni.internal[kf.abilityid]
                            h['伤害加成'] = h['伤害加成'] + itl['伤害加成']
                            jass.SetHeroAgi(hu, jass.GetHeroAgi(hu) + itl['内力'])
                            h['暴击率'] = h['暴击率'] + itl['暴击率']
                            h['绝学领悟'] = h['绝学领悟'] + itl['绝学领悟']
                            h['伤害吸收'] = h['伤害吸收'] + itl['伤害吸收']
                        end
                    end
                end
            else

                u:add_item(kf.itemid)
                show_fail_hint(h, kf)
            end
        end
    end)

    --学习门派内功
    --- @param u unit
    --- @param item item
    et.game:event '单位-捡起物品'(function(self, u, item)
        local p = u:get_owner()
        local h = p.hero
        if u:is_hero() and u:get_owner():is_player() and item:get_id() == 1227895856 then
            if not u:has_item(1227895642) then
                p:send_message("|CFF34FF00你必须携带门派毕业卷才能获得修习资格")
            elseif h.learned_internal then
                p:send_message("|CFF34FF00你已经修行过了")
            elseif u:get_ability_level(h['门派']['15级技']) < 2 then
                p:send_message("你的" .. jass.GetObjectName(h['门派']['15级技']) .. "|r还没修炼到位")
            elseif h:get_kongfu_num() >= h.kongfu_limit then
                p:send_message("|CFF34FF00学习技能已达上限，请先遗忘部分技能")
            elseif h['门派'].name == '自由门派' then
                p:send_message("自由门派没有内功")
            else
                log.debug('选择学习门派内功')
                local grad1 = h['门派']['毕业1']
                local grad2 = h['门派']['毕业2']
                local dn = h['门派'].name
                local d = et.dialog.create(p, "请选择你要修习的内功", { jass.GetObjectName(grad1), jass.GetObjectName(grad2) })
                et.event_register(d.buttons[jass.GetObjectName(grad1)], '对话框-按钮点击')(function(self, dg, pl)
                    become_elder(u, d, dn, grad1)
                end)
                et.event_register(d.buttons[jass.GetObjectName(grad2)], '对话框-按钮点击')(function(self, dg, pl)
                    if grad2 == 1093678935 then
                        if u:has_ability(1093678935) then
                            u:set_ability_level(u:get_ability_level(grad2) + 2)
                        else
                            u:add_ability(grad2, 2)
                        end
                    end
                    become_elder(u, d, dn, grad2)
                end)
            end
        end
    end)
end
init()