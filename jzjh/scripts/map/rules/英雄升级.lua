---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/11/15 21:41
---
--英雄达到某等级
function Ja()
    return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function HeroLevel()
    local u = GetTriggerUnit()
    local p = GetOwningPlayer(u)
    local i = 1 + GetPlayerId(p)
    local loc = nil
    -- 练气师
    if Ce[i] == 5 then
        if GetRandomInt(1, 3) == 1 then
            ModifyHeroStat(0, u, 0, GetRandomInt(4, 8))
        elseif GetRandomInt(1, 2) == 1 then
            ModifyHeroStat(1, u, 0, GetRandomInt(4, 8))
        else
            ModifyHeroStat(2, u, 0, GetRandomInt(4, 8))
        end
        if GetUnitLevel(u) == 80 then
            juexuelingwu[i] = juexuelingwu[i] + 10
            if udg_zhangmen[i] == true then
            else
                SaveStr(YDHT, GetHandleId(p), GetHandleId(p), "〓练气大师〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
            end
            DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|CFF66FF00恭喜" .. (GetPlayerName(p) or "") .. "获得练气大师")
            SetPlayerName(p, "〓练气大师〓" .. (GetPlayerName(p) or ""))
        end
    end
    if GetUnitTypeId(u) == 1328558132 then
        YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 400)
    else
        YDWEGeneralBounsSystemUnitSetBonus(u, 0, 0, 350)
    end
    if GetUnitTypeId(u) == 1328558128 then
        YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 40)
    else
        YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, 35)
    end
    if GetUnitTypeId(u) == 1328558129 then
        YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 5)
    else
        YDWEGeneralBounsSystemUnitSetBonus(u, 2, 0, 4)
    end
    if GetUnitLevel(u) >= 3 and Z8[i] == false then
        Z8[i] = true
        d8[i] = 1
        for _ in _loop_() do
            if d8[i] > 20 then break end --门派数
            if udg_runamen[i] == d8[i] then

                if d8[i] ~= 11 then
                    UnitAddAbility(u, X7[d8[i]])
                    UnitMakeAbilityPermanent(u, true, X7[d8[i]])
                    DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(X7[d8[i]]) or ""))
                    DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子")
                    SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "初级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
                end
                if udg_runamen[i] == 11 then
                    udg_shuxing[i] = udg_shuxing[i] + 5
                    DisplayTextToPlayer(p, 0, 0, "|cff00FF66自由门派3级奖励5点自由属性点及随机武功秘籍一本、小概率获得奇武秘籍一本")
                    if GetRandomInt(1, 100) <= 10 then
                        unitadditembyidswapped(kungfu[GetRandomInt(42, 46)].itemid, u)
                    end
                    if GetRandomInt(1, 100) <= 99 then
                        unitadditembyidswapped(kungfu[GetRandomInt(19, 36)].itemid, u)
                    else
                        unitadditembyidswapped(kungfu[GetRandomInt(1, 18)].itemid, u)
                    end
                    --set S9=1
                    --           	loop
                    --           	    exitwhen S9>20
                    --           	    if (X7[d8[i]]==MM9[S9]) then
                    --           	        set udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + udg_jueneishjc[S9]
                    --           	        call ModifyHeroStat(1,u,0,udg_jueneiminjie[S9])
                    --           	        set udg_baojilv[i] = udg_baojilv[i] + udg_jueneibaojilv[S9]
                    --		set juexuelingwu[i] = juexuelingwu[i] + udg_jueneijxlw[S9]
                    --		set udg_shanghaixishou[i] = udg_shanghaixishou[i] + udg_jueneishxs[S9]
                    --           	    endif
                    --           	    set S9=S9+1
                    --           	endloop
                end
                L7[i] = 1
                for _ in _loop_() do
                    if L7[i] > wugongshu[i] then break end
                    if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
                    else
                        I7[(i - 1) * 20 + L7[i]] = X7[d8[i]]
                        if true then break end
                    end
                    L7[i] = L7[i] + 1
                end
            end
            d8[i] = d8[i] + 1
        end
    end
    if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, X7[udg_runamen[i]]) >= 2 and e9[i] == false then
        e9[i] = true
        d8[i] = 1
        for _ in _loop_() do
            if d8[i] > 20 then break end
            if d8[i] ~= 11 then
                if udg_runamen[i] == d8[i] then
                    UnitAddAbility(u, Z7[d8[i]])
                    UnitMakeAbilityPermanent(u, true, Z7[d8[i]])
                    DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Z7[d8[i]]) or ""))
                    DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子")
                    SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "中级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
                    L7[i] = 1
                    for _ in _loop_() do
                        if L7[i] > wugongshu[i] then break end
                        if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
                        else
                            I7[(i - 1) * 20 + L7[i]] = Z7[d8[i]]
                            if true then break end
                        end
                        L7[i] = L7[i] + 1
                    end
                end
            end
            d8[i] = d8[i] + 1
        end
    end
    if GetUnitLevel(u) >= 3 and GetUnitAbilityLevel(u, Z7[udg_runamen[i]]) >= 2 and d9[i] == false then
        d9[i] = true
        d8[i] = 1
        for _ in _loop_() do
            if d8[i] > 20 then break end
            if d8[i] ~= 11 then
                if udg_runamen[i] == d8[i] then
                    UnitAddAbility(u, Y7[d8[i]])
                    DisplayTextToPlayer(p, 0, 0, "|cff00FF66恭喜领悟技能：" .. (GetObjectName(Y7[d8[i]]) or ""))
                    DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF66玩家" .. (I2S(1 + GetPlayerId(p)) or "") .. "成为" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子")
                    SetPlayerName(p, "〓" .. (udg_menpainame[udg_runamen[i]] or "") .. "高级弟子〓" .. (LoadStr(YDHT, GetHandleId(p), GetHandleId(p)) or ""))
                    UnitMakeAbilityPermanent(u, true, Y7[d8[i]])
                    L7[i] = 1
                    for _ in _loop_() do
                        if L7[i] > wugongshu[i] then break end
                        if I7[GetPlayerId(p) * 20 + L7[i]] ~= 1095067243 then
                        else
                            I7[(i - 1) * 20 + L7[i]] = Y7[d8[i]]
                            if true then break end
                        end
                        L7[i] = L7[i] + 1
                    end
                end
            end
            d8[i] = d8[i] + 1
        end
    end
    if GetUnitLevel(u) == 10 then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了10级，你可以前往全真教（小地图指示点）完成历练1任务（大战江南七怪）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
        loc = GetRectCenter(Te)
        PingMinimapLocForForce(ov(p), loc, 5.0)
        RemoveLocation(loc)
    end
    if GetUnitLevel(u) == 25 then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了25级，你可以前往少林后山（小地图指示点）完成历练2任务（挑战十八罗汉）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
        loc = GetRectCenter(ag)
        PingMinimapLocForForce(ov(p), loc, 5.0)
        RemoveLocation(loc)
    end
    if GetUnitLevel(u) == 40 then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了40级，你可以前往武林城外（小地图指示点）完成历练3任务（勇闯十恶不赦岛）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
        loc = GetRectCenter(Bg)
        PingMinimapLocForForce(ov(p), loc, 5.0)
        RemoveLocation(loc)
    end
    if GetUnitLevel(u) == 55 then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了55级，你可以前往光明顶（小地图指示点）完成历练4任务（勇闯光明顶）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
        loc = GetRectCenter(Lg)
        PingMinimapLocForForce(ov(p), loc, 5.0)
        RemoveLocation(loc)
    end
    if GetUnitLevel(u) == 70 then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了70级，你可以前往少林寺后山（小地图指示点）完成历练5任务（华山论剑）了，完成历练任务可以提升修行，对人物的武功伤害占有重要影响，切记切记！！")
        loc = GetRectCenter(Rg)
        PingMinimapLocForForce(ov(p), loc, 5.0)
        RemoveLocation(loc)
    end
    if GetUnitLevel(u) >= 80 and jiawuxue[i] == false then
        DisplayTimedTextToPlayer(p, 0, 0, 30.0, "|cff66ff00恭喜你升到了80级，获得5个自创武学点（vip玩家获得7个），在通过历练6以后你可以到聚贤庄游坦之处自创武学")
        wuxuedian[i] = wuxuedian[i] + 5
        wuxuedian[i] = wuxuedian[i] + 2
        jiawuxue[i] = true
        zizhiwugong[i] = sc__ZiZhiWuGong_create(0, 0, GetRandomInt(1, 10), 0, 0)
    end
    u = nil
    p = nil
    loc = nil
end
local function init()
    -- 英雄达到某等级
    vj = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(vj, EVENT_PLAYER_HERO_LEVEL)
    TriggerAddCondition(vj, Condition(Ja))
    TriggerAddAction(vj, HeroLevel)
end
init()