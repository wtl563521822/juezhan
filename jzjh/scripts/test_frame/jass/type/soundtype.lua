---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/06 11:47
---

local soundtype = {}

local mt = {}
soundtype.__index = mt

mt.type = 'soundtype'
mt.name = ''

function soundtype.init()
	local soundtype_names={}
	for i = 1, #soundtype_names do
		local so = {}
		so.name = soundtype_names[i]
		setmetatable(so, soundtype)
		table.insert(soundtype, so)
	end
end
