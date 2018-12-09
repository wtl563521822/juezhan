---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/10/28 0028 16:45
---

--- @class item
local item = {}
et.item = item

-- jass的item
--- @type j_item
item.handle = 0

-- item的id
item.id = 0

item.x = 0
item.y = 0
--- @type unit
item.owner = nil

--- @type table<number> 镶嵌宝石列表
item.imbeds = nil

item.hole = 0

--- 物品类型 枚举值：{herb, weapon, clothes, helmet, shoe, accessory, deputy, growable}
item.type = ''

--- @type table 附加属性
item.bonus_table = nil

--- 四圣属性 枚举值 {dragon, tiger, phoenix, turtle}
item.special = nil

--- @type table 存储一些自定义数据
item.data = nil

--- @param item_id 物品id
--- @param x 创建位置x
--- @param y 创建位置y
--- @return item
function item:new(item_id, x, y)
    local it = setmetatable({}, self)
    self.__index = self
    it.handle = jass.CreateItem(item_id, x, y)
    it.x = x or 0
    it.y = y or 0
    it.id = item_id
    it.bonus_table = {}
    it.data = {}
    it:set_type()
    self[it.handle] = it
    return it
end

--- @return string 物品四圣的特殊属性
function item:get_special()
    return self.special
end

--- @param holy string 四圣属性
function item:set_special(holy)
    self.special = holy
end

--- 根据jass.item获取et.item对象
--- @param j_item j_item
--- @return item
function item:get(j_item)
    if not j_item then
        return nil
    end
    if self[j_item] then
        return self[j_item]
    end
    local it = setmetatable({}, self)
    self.__index = self
    it.handle = j_item
    it.id = jass.GetItemTypeId(j_item)
    it.bonus_table = it.bonus_table or {}
    it.data = it.data or {}
    self:set_type()
    self[j_item] = it
    return it
end

--- @return number 物品类型ID
function item:get_id()
    return self.id
end

--- 设置物品的种类
--- @param tp string
function item:set_type(tp)
    if tp then
        self.type = tp
        return
    end
    local j_type = jass.GetItemType(self.handle)
    if j_type == jass.ITEM_TYPE_ARTIFACT then
        self.type = 'weapon'
    elseif j_type == jass.ITEM_TYPE_PURCHASABLE then
        self.type = 'clothes'
    elseif j_type == jass.ITEM_TYPE_CHARGED then
        if et.lni.helmet[self.id] then
            self.type = 'helmet'
        elseif et.lni.shoe[self.id] then
            self.type = 'shoe'
        elseif et.lni.deputy[self.id] then
            self.type = 'deputy'
        elseif et.lni.accessory[self.id] then
            self.type = 'accessory'
        end
    elseif et.lni.herb and et.lni.herb[self.id] then
        self.type = 'herb'
    end
end

--- @return string
function item:get_type()
    return self.type
end

--- @return number
function item:get_hole()
    return self.hole
end

--- 增加孔的数量
function item:add_hole()
    self.hole = self.hole + 1
end

--- 获取剩余孔的数量
--- @return number
function item:get_remained_hole()
    return self.hole - #self.imbeds
end

--- 镶嵌宝石
--- @param h  hero 镶嵌宝石的英雄
--- @param bonus_type string 宝石奖励类型
function item:embed(h, bonus_type)
    table.insert(self.imbeds, bonus_type)
    local num = 1
    if h.part_times['锻造师'] then
        num = num + h.part_times['锻造师'].level
    end
    item.bonus_table[bonus_type] = (item.bonus_table[bonus_type] or 0) + num
end

--- 判断物品是否为装备
--- @return boolean
function item:is_equipment()
    return is_in(self.type, { 'weapon', 'clothes', 'helmet', 'shoe', 'accessory', 'deputy' })
end

--- 获取物品的等级
--- @return number
function item:get_level()
    return jass.GetItemLevel(self.handle)
end

--- @return table 物品奖励（附加属性）列表
function item:get_bonus_table()
    return self.bonus_table
end

--- 设置物品提示扩展
--- @param tip string
function item:set_tip(tip)
    japi.EXSetItemDataString(base.string2id(self.id), 3, tip)
end

--- 设置物品提示
--- @param title string
function item:set_title(title)
    japi.EXSetItemDataString(base.string2id(self.id), 4, title)
end

--- 设置物品图标
--- @param art string
function item:set_art(art)
    japi.EXSetItemDataString(base.string2id(self.id), 1, art)
    self:fresh_item()
end

--- 禁止丢弃
function item:disable_drop()
    jass.SetItemDroppable(self.item_handle, false)
end