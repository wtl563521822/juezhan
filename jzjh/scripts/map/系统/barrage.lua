---
---  弹幕系统
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/30 14:51
---

require 'et.timer'
local stack = require 'util.collection.stack'

local TIME_OUT = 0.03

--- @class barrage
local barrage = {}

local barrage_stack = stack:new()

--- @type unit 发射者
barrage.caster = nil
--- @type unit 子弹
barrage.missile = nil
--- 初始速度 real
barrage.origin_speed = 0.01
-- 最大速度 real
barrage.max_speed = 0.01
-- 加速度 real
barrage.accel = 0
-- 角度 real
barrage.angle = 90
-- 距离 real
barrage.distance = 0.01
-- 弧度 real
barrage.arc = 0
-- 范围 real
barrage.range = 100
-- 伤害 real
barrage.damage = 0
--- @type point 有角度、距离，此位置可为空
barrage.pos = nil
--- @type unit 目标
barrage.target = nil
-- 高度 real
barrage.height = 0.01
-- 海拔 考虑地形：地形高度+高度
barrage.altitude = 0.01
-- 生命值 real
barrage.hp = 10
-- 特效 string
barrage.effect = ""
-- 重力 boolean
barrage.gravity = false
-- 重力加速度
barrage.gravity_accel = 0
-- 飞行时间
barrage.fly_time = 0

--- @return barrage
function barrage:new()
    local b = setmetatable({}, self)
    self.__index = self
    return b
end

--- 登记弹幕
--- @param missile unit
local function register_missile(missile)
    missile:add_ability(1098015094) -- 风暴之鸦
    missile:remove_ability(1098015094)
    missile:set_point(et.point(missile:getX(), missile:getY()))
    missile:set_animation(90)
end

-- 计算加速的时间
-- s = v0 * t + 1/2 * a * t * t
-- a * t * t  + 2 * v0 * t - 2 * s = 0
-- time1 = (- 2 * v0 + SquareRoot ( 4 * v0 *v0 + 8 * a * s)) / (2 * a)
local function get_accelerated_time(dis, originspeed, accel)
    local time1 = (-1 * originspeed + math.sqrt(originspeed ^ 2 + 2 * accel * dis)) / accel
    local time2 = (-1 * originspeed - math.sqrt(originspeed ^ 2 + 2 * accel * dis)) / accel
    time1 = (time1 == 0.0) and 0.01 or time1
    time2 = (time2 == 0.0) and 0.01 or time2
    return math.max(time1, time2)
end

--- @param tab table
function barrage:cast(tab)
    local b = barrage:new()
    if not tab.pos then
        return
    end
    -- 初始化 barrage
    for k, v in pairs(tab) do
        b[k] = v
    end

    -- 设置角度和距离
    if b.pos[1] ~= b.caster:getX() or b.pos[2] ~ b.caster:getY() then
        b.angle = math.deg(b.caster:get_point() / b.pos)
        b.distance = b.caster:get_point() * b.pos
    end

    register_missile(b.missile)
    b.gravity_accel = b.gravity and 0.4 or 0
    b.height = b.height + b.caster:get_fly_height()
    b.altitude = b.height + b.caster:get_point():getZ()
    -- 是否具有惯性
    local inertia = true

    if b.origin_speed == b.max_speed then
        -- 匀速运动
        b.accel = 0
        inertia = false
        b.fly_time = b.distance / b.origin_speed
    else
        -- 匀加速运动
        b.fly_time = get_accelerated_time(b.dis, b.origin_speed, b.accel)
    end

    b.space = b.origin_speed * TIME_OUT

    barrage_stack:push(b)


end

et.loop(TIME_OUT * 1000, function()

end)

return barrage