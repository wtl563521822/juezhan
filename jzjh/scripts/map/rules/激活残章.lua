---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/30 17:10
---

-------激活残章-----
local residual = {}
residual[1227896371] = {
    kungfu = 1093678920,
    point = 5,
    requires = { 1093678935, 1093678933, 1093679152 },
    name = "反两仪刀法第1式：行气如虹",
}
residual[1227896370] = {
    kungfu = 1093679157,
    point = 5,
    requires = { 1093678928, 1093678930, 1093679154 },
    name = "六脉神剑第1式：少商剑",
}
residual[1227896369] = {
    kungfu = 1093678924,
    point = 5,
    requires = { 1093679154, 1093678929, 1093682254 },
    name = "打狗棒法第1式：恶狗拦路",
}
residual[1227896374] = {
    kungfu = 1093678918,
    point = 5,
    requires = { 1093679428, 1093679152, 1093678897 },
    name = "独孤九剑第1式：破剑式",
}
residual[1227896372] = {
    kungfu = 1093679158,
    point = 5,
    requires = { 1093679155, 1093678936, 1093678669 },
    name = "胡家刀法第1式：八方藏刀式",
}
residual[1227896368] = {
    kungfu = 1093679161,
    point = 5,
    requires = { 1093679156, 1093682226, 1093678931 },
    name = "西毒棍法第1式：蛇盘青竹",
}
residual[1227896377] = {
    kungfu = 1093678922,
    point = 5,
    requires = { 1093678666, 1093678932, 1395666994 },
    name = "辟邪剑法第1式：流星赶月",
}
residual[1227896376] = {
    kungfu = 1093678921,
    point = 5,
    requires = { 11093678926, 1093682232, 1093678936 },
    name = "野球拳第1式：翻肘裂捶",
}
residual[1227896375] = {
    kungfu = 1093678917,
    point = 5,
    requires = { 1093682232, 1093678927, 1093682254 },
    name = "降龙十八掌第1式：神龙摆尾",
}
residual[1227896373] = {
    kungfu = 1093678919,
    point = 5,
    requires = { 1093678664, 1093678931, 1093679156 },
    name = "黯然销魂掌第1式：无中生有",
}
residual[1227899735] = {
    kungfu = 1093682254,
    point = 5,
    requires = { 1093682254, 1093679428, 1093678936 },
    name = "九阳真经残卷",
}

local kongfu_list = { 1093678920, 1093679157, 1093678924, 1093678918, 1093679158, 1093679161, 1093678922, 1093678921, 1093678917, 1093678919, 1093682254 }
--武魂石系统
local function add_buttons(u, item)
    local p = u:get_owner()
    local h = p.hero
    jass.DialogClear(h.wuhun)
    h.wuhun_buttons = {}
    jass.RemoveItem(item)
    jass.DialogSetMessage(h.wuhun, "请选择要激活的残章")
    for _, v in ipairs(kongfu_list) do
        if not is_in(v, h.activated) then
            h.wuhun_buttons[v] = jass.DialogAddButton(h.wuhun, jass.GetAbilityName(v), 0)
        end
    end
    h.wuhun_buttons['cancel'] = jass.DialogAddButton(h.wuhun, "取消", 0)
    jass.DialogDisplay(p.handle, h.wuhun, true)

    et.event_register(h.wuhun, '对话框-点击')(function(dialog, p, bt)
        for k, v in pairs(h.wuhun_buttons) do
            if bt == v then
                if k == 'cancel' then
                    u:add_item(1227897169)
                else
                    table.insert(h.activated, k)
                    for _, v1 in pairs(residual) do
                        if v1.kungfu == k then
                            p:send_message("|CFF00ff33恭喜激活了" .. v1.name)
                        end
                    end

                end
            end
        end
    end)
end

local function init()
    et.game:event '单位-使用物品'(function(self, u, item)
        local r = residual[item:get_id()]
        local p = u:get_owner()
        local h = p.hero
        local i = p.id
        if r then
            if not u:has_ability(r.kungfu) then
                p:send_message("|CFFFF0033你尚未学会该武功，无法激活隐藏招式")
                u:add_item(item:get_id())
            else
                if is_in(r.kungfu, h.activated) then
                    p:send_message("|CFFFF0033你之前已经激活过了")
                    u:add_item(item:get_id())
                else
                    if h['绝学领悟'] >= r.point and u:has_all_abilities(r.requires) then
                        table.insert(h.activated, r.kungfu)
                        p:send_message("|CFF00ff33恭喜激活了" .. r.name)
                    else
                        p:send_message("|CFFFF0033条件不足，激活失败")
                        u:add_item(item:get_id())
                    end
                end

            end
        end
        if item:get_id() == 1227897169 then
            if (not De[i] and not Ee[i]) then
                p:send_message("|CFFFF0033未集齐决战套装或江湖套装，激活失败")
            else

            end

        end

    end)

end
init()
