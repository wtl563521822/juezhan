---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/06 11:47
---

local race = {}

local mt = {}
race.__index = mt

mt.type = 'race'
mt.name = ''

function race.init()
	local race_names={}
	for i = 1, #race_names do
		local ra = {}
		ra.name = race_names[i]
		setmetatable(ra, race)
		table.insert(race, ra)
	end
end
