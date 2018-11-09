---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/5 10:46
---
local common_util = require 'jass.util.common_util'
local sound = {}
setmetatable(sound, sound)

local mt = {}
sound.__index = mt

mt.label = '声音'
mt.fade_in_rate = 20
mt.fade_out_rate = 20
mt.looping=false
mt._3D=false
mt.stop_when_out_of_range = false

function sound:__tostring()
    return self.label
end

function sound.create(label, looping, is3D, stop_when_out_of_range, fade_in_rate, fade_out_rate)
    local s = {}
    setmetatable(s, sound)
    s.handle_id = common_util.generate_handle_id()
    s.label = label
    s.looping = looping
    s._3D = is3D
    s.stop_when_out_of_range = stop_when_out_of_range
    s.fade_in_rate = fade_in_rate
    s.fade_out_rate = fade_out_rate
    return s
end

return sound