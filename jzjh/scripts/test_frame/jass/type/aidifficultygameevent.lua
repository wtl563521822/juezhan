---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/06 11:47
---

local aidifficultygameevent = {}

local mt = {}
aidifficultygameevent.__index = mt

mt.type = 'aidifficultygameevent'
mt.name = ''

function aidifficultygameevent.init()
	local aidifficultygameevent_names={}
	for i = 1, #aidifficultygameevent_names do
		local ai = {}
		ai.name = aidifficultygameevent_names[i]
		setmetatable(ai, aidifficultygameevent)
		table.insert(aidifficultygameevent, ai)
	end
end