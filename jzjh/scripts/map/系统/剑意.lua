--锟斤拷锟斤拷系统
function c5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER -- INLINED!!
end
function D5()
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if GetItemType(UnitItemInSlotBJ(u, 1)) ~= ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u, 2)) ~= ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u, 3)) ~= ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u, 4)) ~= ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u, 5)) ~= ITEM_TYPE_ARTIFACT and GetItemType(UnitItemInSlotBJ(u, 6)) ~= ITEM_TYPE_ARTIFACT then
		SetUnitPosition(u, -10510, -9660)
		PanCameraToTimedForPlayer(p, -10510, -9660, 0)
	else
		DisplayTextToPlayer(p, 0, 0, "|CFF34FF00锟斤拷锟斤拷锟斤拷埽锟斤拷锟斤拷锟斤拷耍锟斤拷锟斤拷杀锟斤拷太锟斤拷锟剿ｏ拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷缘锟斤拷")
	end
	u = nil
	p = nil
end
function XiuWei(u, num, id, s)
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	if wugongxiuwei[i] >= num then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000锟斤拷锟窖撅拷锟斤拷锟斤拷锟斤拷锟斤拷为锟斤拷")
	elseif wugongxiuwei[i] < num - 1 then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000锟姐还锟斤拷要锟斤拷锟斤拷锟揭伙拷锟斤拷锟轿�")
	elseif xiuxing[i] < num or UnitHaveItem(u, id) == false then
		DisplayTextToPlayer(p, 0, 0, "|cFFFF0000锟斤拷锟斤拷锟斤拷锟斤拷")
	else
		RemoveItem(FetchUnitItem(u, id))
		udg_shanghaijiacheng[i] = udg_shanghaijiacheng[i] + 0.05
		wugongxiuwei[i] = num
		DisplayTextToPlayer(p, 0, 0, "|cFF00FF00锟斤拷锟叫成癸拷锟斤拷锟斤拷学锟斤拷为锟斤到锟斤拷" .. (s or "") .. "锟姐，锟戒功锟斤拷锟斤拷5%")
	end
	p = nil
end
function F5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896136 -- INLINED!!
end
function G5()
	XiuWei(GetTriggerUnit(), 1, 1227895116, "一")
end
function I5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896137 -- INLINED!!
end
function l5()
	XiuWei(GetTriggerUnit(), 2, 1227895094, "锟斤拷")
end
function K5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896135 -- INLINED!!
end
function L5()
	XiuWei(GetTriggerUnit(), 3, 1227895091, "锟斤拷")
end
function N5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896134 -- INLINED!!
end
function O5()
	XiuWei(GetTriggerUnit(), 4, 1227895379, "锟斤拷")
end
function Q5()
	return IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) ~= nil and GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896138 -- INLINED!!
end
function R5()
	XiuWei(GetTriggerUnit(), 5, 1227894864, "锟斤拷")
end
function LingWuJY_Conditions()
	return GetPlayerController(GetOwningPlayer(GetTriggerUnit())) == MAP_CONTROL_USER and GetItemTypeId(GetManipulatedItem()) == 1227896914
end
function LingWuJY()
	local t = GetTriggeringTrigger()
	local id = GetHandleId(t)
	local cx = LoadInteger(YDHT, id, -807506826)
	local u = GetTriggerUnit()
	local p = GetOwningPlayer(u)
	local i = 1 + GetPlayerId(p)
	cx = cx + 3
	SaveInteger(YDHT, id, -807506826, cx)
	SaveInteger(YDHT, id, -320330265, cx)
	SaveInteger(YDHT, id * cx, -1587459251, i)
	SaveUnitHandle(YDHT, id * cx, -784714656, u)
	if IsUnitType(u, UNIT_TYPE_HERO) ~= nil == false then -- INLINED!!
		AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
		DisplayTextToPlayer(Player(-1 + i), 0, 0, "|cFFFF0000锟斤拷要锟斤拷锟角诧拷锟斤拷锟斤拷锟斤拷")
	else
		if wugongxiuwei[i] < 1 then
			AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
			DisplayTextToPlayer(Player(-1 + i), 0, 0, "|cFFFF0000锟斤拷锟斤拷涔︼拷锟轿拷锟斤拷锟�")
		else
			if yd[i] == 1 then
				wuxing[i] = wuxing[i] - xd[i]
			elseif yd[i] == 2 then
				gengu[i] = gengu[i] - xd[i]
			elseif yd[i] == 3 then
				danpo[i] = danpo[i] - xd[i]
			elseif yd[i] == 4 then
				yishu[i] = yishu[i] - xd[i]
			elseif yd[i] == 5 then
				fuyuan[i] = fuyuan[i] - xd[i]
			elseif yd[i] == 6 then
				jingmai[i] = jingmai[i] - xd[i]
			end
			if wugongxiuwei[i] == 1 then
				xd[i] = GetRandomInt(xd[i], 2)
			elseif wugongxiuwei[i] == 2 then
				xd[i] = GetRandomInt(xd[i], 4)
			elseif wugongxiuwei[i] == 3 then
				xd[i] = GetRandomInt(xd[i], 6)
			elseif wugongxiuwei[i] == 4 then
				xd[i] = GetRandomInt(xd[i], 8)
			elseif wugongxiuwei[i] == 5 then
				xd[i] = GetRandomInt(xd[i], 10)
			end
			yd[i] = 0
			DisplayTimedTextToPlayer(Player(-1 + i), 0, 0, 20.0, "|cff00ff00锟斤拷喜锟斤拷锟津到碉拷" .. (I2S(xd[i]) or "") .. "锟姐剑锟斤拷")
			DisplayTimedTextToPlayer(Player(-1 + i), 0, 0, 20.0, "|cffffff00锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷息锟斤拷jy锟斤拷锟斤拷锟皆把斤拷锟斤拷转锟斤拷为一锟斤拷锟皆革拷锟斤拷锟皆ｏ拷锟斤拷锟斤拷每锟斤拷转锟斤拷锟斤拷要锟斤拷锟斤拷5锟斤拷锟斤拷稀锟斤拷")
			if xd[i] == 2 then
				DestroyEffect(vd[i])
				AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\fairywing.MDX")
				vd[i] = bj_lastCreatedEffect
			elseif xd[i] == 4 then
				DestroyEffect(vd[i])
				AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\fenlie.MDX")
				vd[i] = bj_lastCreatedEffect
			elseif xd[i] == 6 then
				DestroyEffect(vd[i])
				AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\HeroByakuyaWing.MDX")
				vd[i] = bj_lastCreatedEffect
			elseif xd[i] == 8 then
				DestroyEffect(vd[i])
				AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\AWING.MDX")
				vd[i] = bj_lastCreatedEffect
			elseif xd[i] == 10 then
				DestroyEffect(vd[i])
				AddSpecialEffectTargetUnitBJ("chest", u, "war3mapImported\\FWIND.MDX")
				vd[i] = bj_lastCreatedEffect
			end
		end
	end
	FlushChildHashtable(YDHT, id * cx)
	t = nil
	u = nil
	p = nil
end
--转锟斤拷锟斤拷锟斤拷
function ZhuanHuaJY_Conditions()
	return Ad[1 + GetPlayerId(GetTriggerPlayer())]
end
function ZhuanHuaJY()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	Ad[i] = false
	if GetClickedButton() == B8[i] then
		DialogClear(v8[i])
	else
		if yd[i] == 1 then
			wuxing[i] = wuxing[i] - xd[i]
		elseif yd[i] == 2 then
			gengu[i] = gengu[i] - xd[i]
		elseif yd[i] == 3 then
			danpo[i] = danpo[i] - xd[i]
		elseif yd[i] == 4 then
			yishu[i] = yishu[i] - xd[i]
		elseif yd[i] == 5 then
			fuyuan[i] = fuyuan[i] - xd[i]
		elseif yd[i] == 6 then
			jingmai[i] = jingmai[i] - xd[i]
		end
		if GetClickedButton() == w8[i] then
			gengu[i] = gengu[i] + xd[i]
			yd[i] = 2
		elseif GetClickedButton() == y8[i] then
			wuxing[i] = wuxing[i] + xd[i]
			yd[i] = 1
		elseif GetClickedButton() == z8[i] then
			fuyuan[i] = fuyuan[i] + xd[i]
			yd[i] = 5
		elseif GetClickedButton() == A8[i] then
			danpo[i] = danpo[i] + xd[i]
			yd[i] = 3
		elseif GetClickedButton() == a8[i] then
			yishu[i] = yishu[i] + xd[i]
			yd[i] = 4
		elseif GetClickedButton() == x8[i] then
			jingmai[i] = jingmai[i] + xd[i]
			yd[i] = 6
		end
		AdjustPlayerStateBJ(-5, p, PLAYER_STATE_RESOURCE_LUMBER)
		DisplayTextToPlayer(p, 0, 0, "|cFF99FFCC转锟斤拷锟缴癸拷|r")
		DialogClear(v8[i])
	end
	p = nil
end
function JianYi_Trigger()
	local t = nil
	-- 锟斤拷锟诫剑锟斤拷系统
	t = CreateTrigger()
	TriggerAddRect(t, Sg)
	TriggerAddCondition(t, Condition(c5))
	TriggerAddAction(t, D5)

	-- 锟斤到锟节硷拷锟斤拷锟斤拷为
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(F5))
	TriggerAddAction(t, G5)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(I5))
	TriggerAddAction(t, l5)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(K5))
	TriggerAddAction(t, L5)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(N5))
	TriggerAddAction(t, O5)
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(Q5))
	TriggerAddAction(t, R5)
	-- 锟斤拷锟斤拷锟斤拷
	t = CreateTrigger()
	TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
	TriggerAddCondition(t, Condition(LingWuJY_Conditions))
	TriggerAddAction(t, LingWuJY)
	-- 选锟斤拷转锟斤拷锟斤拷锟斤拷
	t = CreateTrigger()
	TriggerRegisterDialogEvent(t, v8[1])
	TriggerRegisterDialogEvent(t, v8[2])
	TriggerRegisterDialogEvent(t, v8[3])
	TriggerRegisterDialogEvent(t, v8[4])
	TriggerRegisterDialogEvent(t, v8[5])
	TriggerAddCondition(t, Condition(ZhuanHuaJY_Conditions))
	TriggerAddAction(t, ZhuanHuaJY)
	t = nil
end
--转化剑意
function TransferJY()
	local p = GetTriggerPlayer()
	local i = 1 + GetPlayerId(p)
	if xd[i] == 0 then
		DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000英雄，你的剑意不够哦")
	else
		if yd[i] == 1 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了悟性")
		elseif yd[i] == 2 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了根骨")
		elseif yd[i] == 3 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了胆魄")
		elseif yd[i] == 4 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了医术")
		elseif yd[i] == 5 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了福缘")
		elseif yd[i] == 6 then
			DisplayTextToPlayer(p, 0, 0, "|cff00ff00当前已将" .. (I2S(xd[i]) or "") .. "点剑意转化成了经脉")
		end
		if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) < 5 then
			DisplayTimedTextToPlayer(p, 0, 0, 30, "|cffff0000转化剑意需要至少5个黄金")
		else
			DialogSetMessage(v8[i], "你拥有" .. (I2S(xd[i]) or "") .. "点剑意，请选择要转化的属性")
			DialogAddButtonBJ(v8[i], "根骨")
			w8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "悟性")
			y8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "福缘")
			z8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "胆魄")
			A8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "医术")
			a8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "经脉")
			x8[i] = bj_lastCreatedButton
			DialogAddButtonBJ(v8[i], "取消")
			B8[i] = bj_lastCreatedButton
			DialogDisplay(p, v8[i], true)
			Ad[i] = true
		end
	end
end
local function init()
	et.game:event '玩家-聊天' (function(self, p, s)
		if s=='jy' then
			TransferJY()
		end
	end)
end
init()
