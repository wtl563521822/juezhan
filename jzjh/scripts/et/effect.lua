---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/10/31 17:24
---

local point = require 'et.point'

local effect = {}

et.effect = effect
setmetatable(effect, effect)

local mt = {}
effect.__index = mt

-- 储存jass的effect
mt.handle = 0

-- 类型
mt.type = 'effect'

function effect.add_to_point(where)

end