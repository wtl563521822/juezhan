---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 10:00
---

--选择门派加入
function WuMenPai_Condition()
    return IsUnitType(GetLeavingUnit(), UNIT_TYPE_HERO) ~= nil and udg_runamen[1 + GetPlayerId(GetOwningPlayer(GetLeavingUnit()))] == 0 and GetPlayerController(GetOwningPlayer(GetLeavingUnit())) == MAP_CONTROL_USER -- INLINED!!
end
--自由门派
function WuMenPai_Action()
    local u = et.unit(jass.GetLeavingUnit())
    local p = et.player(u:get_owner())
    local i = p.id
    local h = p.hero
    h:join_denomination('自由门派')
    local d = h['门派']
    p:send_message("|CFFff9933恭喜加入〓" .. d.name .. "〓，请在NPC郭靖处选择副职|r")
    p:set_name("〓" .. d.name .. "〓" .. p:get_name())
    u:add_ability(1093678418)
    p:send_message("|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
    AddCharacterABuff(p.hero.handle, udg_xinggeA[i])
    AddCharacterBBuff(p.hero.handle, udg_xinggeB[i])
    u:remove_ability(1098282348)
    u:set_point(rect_reborn:get_random())
    p:set_camera(u:get_point())
    h['伴侣'] = p:create_unit(1853257068, u:get_point())
    h['悟性'] = h['悟性'] + d['悟性']
    h['福缘'] = h['福缘'] + d['福缘']
    h['医术'] = h['医术'] + d['医术']
    h['根骨'] = h['根骨'] + d['根骨']
    h['经脉'] = h['经脉'] + d['经脉']
    h['胆魄'] = h['胆魄'] + d['胆魄']
    u:add_item(1227896394)

    p:add_lumber(60)
    h['自由属性'] = h['自由属性'] + d['自由属性']

end
--A项和B项性格
local function AddCharacterABuff(u, characterA)
    UnitAddAbilityBJ(1093678646, u)
    SetPlayerAbilityAvailableBJ(false, 1093678646, GetOwningPlayer(u))
    SetUnitAbilityLevel(u, 1093678648, characterA)
end
local function AddCharacterBBuff(u, characterB)
    UnitAddAbilityBJ(1093678647, u)
    SetPlayerAbilityAvailableBJ(false, 1093678647, GetOwningPlayer(u))
    SetUnitAbilityLevel(u, 1093678649, characterB)
end

local function init()
    -- 加入门派
    --- @param u unit
    --- @param item item
    et.game:event '单位-捡起物品'(function(self, u, item)
        if u:is_hero() and is_in(GetItemTypeId(GetManipulatedItem()), { 1227894833, 1227894834, 1227894835, 1227894836, 1227894837, 1227894838, 1227894839, 1227894840, 1227894841, 1227897157, 1227894849, 1227897166, 1227899186, 1227899723, 1227899736 }) then
            local p = u:get_owner()
            local h = p.hero
            if h['门派'] then
                p:send_message("|CFFff0000你已经加过门派了|r")
                return
            end

            if et.lni.denomination[item:get_id()] then
                local d = et.lni.denomination[item:get_id()]
                if not d.permit_ids or not is_in(u.id, d.permit_ids) then
                    h:join_denomination(item:get_id())
                    p:send_message("|CFFff9933恭喜加入〓" .. d.name .. "〓，请在NPC郭靖处选择副职|r")
                    p:set_name("〓" .. d.name .. "〓" .. p:get_name())
                    u:add_ability(1093678418)
                    p:send_message("|CFFff9933获得武功：凌波微步（可以在主城和传送石之间任意传送了）\n获得新手大礼包（可以在背包中打开获得惊喜哦）")
                    AddCharacterABuff(h.handle, h.char_a)
                    AddCharacterBBuff(h.handle, h.char_b)
                    u:remove_ability(1098282348)
                    u:set_point(rect_reborn:get_random())
                    p:set_camera(u:get_point())
                    h['伴侣'] = p:create_unit(1853257068, u:get_point())
                    h['悟性'] = h['悟性'] + d['悟性']
                    h['福缘'] = h['福缘'] + d['福缘']
                    h['医术'] = h['医术'] + d['医术']
                    h['根骨'] = h['根骨'] + d['根骨']
                    h['经脉'] = h['经脉'] + d['经脉']
                    h['胆魄'] = h['胆魄'] + d['胆魄']
                    u:add_item(1227896394)
                else
                    p:send_message("|CFFff0000你的角色不能加入该门派")
                end
            end
        end
    end)
    -- 自由门派
    Mh = CreateTrigger()
    YDWETriggerRegisterLeaveRectSimpleNull(Mh, udg_xuanmenpai.handle)
    TriggerAddCondition(Mh, Condition(WuMenPai_Condition))
    TriggerAddAction(Mh, WuMenPai_Action)
end
init()
