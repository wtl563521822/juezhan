---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/5 13:44
---
local mapcontrol = {}

local mt = {}
mapcontrol.__index = mt

mt.type='mapcontrol'
mt.name = ''

function mapcontrol.init()
    local mapcontrol_names ={
        'MAP_CONTROL_USER',
        'MAP_CONTROL_COMPUTER',
        'MAP_CONTROL_RESCUABLE',
        'MAP_CONTROL_NEUTRAL',
        'MAP_CONTROL_CREEP',
        'MAP_CONTROL_NONE',
    }
    for i = 1, #mapcontrol_names do
        local mc = {}
        mc.name = mapcontrol_names[i]
        setmetatable(mc, mapcontrol)
        table.insert(mapcontrol, mc)
    end

end


return mapcontrol