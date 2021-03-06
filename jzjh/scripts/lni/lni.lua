local lni = require 'lni.lni-loader'
local storm = require 'jass.storm'
require 'util.id'

et = et or {}
et.lni = {}

lni:set_marco('TableSearcher', '$MapPath$lni\\table\\')
for _, path in ipairs(lni.local_funcs.split(package.path, ';')) do
	-- 把packagepath的?.lua替换成lni\table\.iniconfig
	local buf = storm.load(path:gsub('%?%.lua', 'lni\\table\\.iniconfig'))
	-- 如果找到了.iniconfig文件，将当前路径设置为地图搜索路径
	if buf then
		lni:set_marco('MapPath', path:gsub('%?%.lua', ''))
		break
	end
end

function et.lni_loader(name)
	et.lni[name] = lni:packager(name, storm.load)
	log.info('读取lni文件'..name)
end

function et.extend_lni(tab)
	for k, v in pairs(tab) do
        v.name = k
    end
    local temp = {}
    for k, v in pairs(tab) do
        if v.item_id then
            if type(v.item_id) == 'string' then
                v.item_id = base.string2id(v.item_id)
            end
            temp[v.item_id] = v
        end
        if v.ability_id then
            if type(v.ability_id) == 'string' then
                v.ability_id = base.string2id(v.ability_id)
            end
            temp[v.ability_id] = v
        end
        if v.unit_id then
            if type(v.unit_id) == 'string' then
                v.unit_id = base.string2id(v.unit_id)
            end
            temp[v.unit_id] = v
        end
    end
    for k, v in pairs(temp) do
        tab[k] = temp[k]
    end
end
