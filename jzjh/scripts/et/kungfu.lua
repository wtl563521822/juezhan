---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/27 0027 19:28
---

local kungfu = {}

setmetatable(kungfu, kungfu)
et.kungfu = kungfu

local mt = {}

kungfu.__index = mt

mt.type = '3级技' -- 门派3、8、15、毕业1、毕业2，江湖、绝世

mt['经验'] = 0

mt['重数'] = 1

mt['升重方式'] = '杀怪' -- 杀怪、攻击、受攻击、使用

mt['升重经验'] = 100

mt.ability_id = 0

mt.hero = hero

mt.hint = '/'

function kungfu.create(ability_id)
    local kf = setmetatable({}, kungfu)
    kf.ability_id = ability_id
    return kf
end

function mt:level_up()
    local hero = self.hero
    local w1 = math.random(0, self['升重经验'] / 60) + 5 + hero['悟性']
    local w2 = 3 + hero.char_a
    local w3 = 5
    self.hint = self['经验'] .. '/' .. self['升重经验'] * self['重数']
    self['经验'] = self['经验'] + math.floor(w1 * w2 * w3)
    if self['经验'] > self['升重经验'] * self['重数'] then
        self['重数'] = self['重数'] + 1
        self['经验'] = 0
        force.send_message("|cff66ff00恭喜玩家" .. hero:get_owner().id .. "领悟了武功：" .. (jass.GetObjectName(id) or "") .. "第" .. self['重数'] .. "重")
    end

end

et.game:event '单位-杀死单位'(function(trg, killer, killed)
    local p = killer:get_owner()
    local hero = p.hero
    if hero and hero['武功'] then
        for _, kf in hero['武功'] do
            if kf['升重方式'] == '杀怪' then
                kf:level_up()
            end
        end
    end
end)

