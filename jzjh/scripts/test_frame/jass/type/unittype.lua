---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/11/5 12:49
---


local unittype = {}

local mt = {}
unittype.__index = mt

mt.type = 'unittype'
mt.name = ''

function unittype.init()
    --===================================================
    -- Unit Type Constants for use with IsUnitType()
    --===================================================
    local unittype_names = {
        'UNIT_TYPE_HERO',
        'UNIT_TYPE_DEAD',
        'UNIT_TYPE_STRUCTURE',
        'UNIT_TYPE_FLYING',
        'UNIT_TYPE_GROUND',
        'UNIT_TYPE_ATTACKS_FLYING',
        'UNIT_TYPE_ATTACKS_GROUND',
        'UNIT_TYPE_MELEE_ATTACKER',
        'UNIT_TYPE_RANGED_ATTACKER',
        'UNIT_TYPE_GIANT',
        'UNIT_TYPE_SUMMONED',
        'UNIT_TYPE_STUNNED',
        'UNIT_TYPE_PLAGUED',
        'UNIT_TYPE_SNARED',
        'UNIT_TYPE_UNDEAD',
        'UNIT_TYPE_MECHANICAL',
        'UNIT_TYPE_PEON',
        'UNIT_TYPE_SAPPER',
        'UNIT_TYPE_TOWNHALL',
        'UNIT_TYPE_ANCIENT',
        'UNIT_TYPE_TAUREN',
        'UNIT_TYPE_POISONED',
        'UNIT_TYPE_POLYMORPHED',
        'UNIT_TYPE_SLEEPING',
        'UNIT_TYPE_RESISTANT',
        'UNIT_TYPE_ETHEREAL',
        'UNIT_TYPE_MAGIC_IMMUNE',
    }
    for i = 0, #unittype_names - 1 do
        local ut = {}
        ut.name = unittype_names[i + 1]
        setmetatable(ut, unittype)
        unittype[i] = ut
    end

end

return unittype