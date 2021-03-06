
local jass = require 'jass.common'

--命令玩家选中单位
--	单位
function et.player.__index:selectUnit(u)
	if self == et.player.self then
		jass.ClearSelection()
		jass.SelectUnit(u.handle, true)
	end
end

--命令玩家添加选择某单位
--	单位
function et.player.__index:addSelect(u)
	if self == et.player.self then
		jass.SelectUnit(u.handle, true)
	end
end

--命令玩家取消选择某单位
--	单位
function et.player.__index:removeSelect(u)
	if self == et.player.self then
		jass.SelectUnit(u.handle, false)
	end
end

--定义玩家选择事件
local j_trg = war3.CreateTrigger(function()
	local u = et.unit(jass.GetTriggerUnit())
	if not u then
		return
	end
	local p = et.player(jass.GetTriggerPlayer())


	if jass.GetTriggerEventId() == jass.EVENT_PLAYER_UNIT_SELECTED then
		p:event_notify('玩家-选择单位', p, u)
	else
		p:event_notify('玩家-取消选择单位', p, u)
	end
end)
for i = 1, 16 do
	jass.TriggerRegisterPlayerUnitEvent(j_trg, et.player[i].handle, jass.EVENT_PLAYER_UNIT_SELECTED, nil)
	jass.TriggerRegisterPlayerUnitEvent(j_trg, et.player[i].handle, jass.EVENT_PLAYER_UNIT_DESELECTED, nil)
end
