---
--- Generated by EmmyLua(https://github.com/EmmyLua
--- Created by G_Seinfeld.
--- DateTime: 2018/11/17 0017 11:24
---

-- 生成伴侣的ini文件

require('war3.id')

-- 字符串分割
local function split(str, p)
    local rt = {}
    str:gsub('[^' .. p .. ']+', function(w)
        table.insert(rt, w)
    end)
    return rt
end

local function main()
    local file = io.open('generator/source.txt', 'r')
    local dest = io.open('lni/table/internal.ini', 'a+')
    local dest2 = io.open('generator/dest2.txt', 'r')
    local tab = {}
    for line in dest2:lines() do
        local strs = split(line, '%s')
        local id = strs[1]
        local name = strs[2]
        tab[id] = name
    end
    for line in file:lines() do
        local strs = split(line, ',')
        local ability_id = strs[2]
        local baoji = strs[3]
        local shxs = strs[4]
        local jxlw = strs[5]
        local minjie = strs[6]
        local shjc = strs[7]
        dest:write("['"..tab[base.id2string(ability_id)].."']", '\n')
        dest:write("'ability_id' = '", base.id2string(ability_id), "'\n")
        dest:write("'暴击率' = ", baoji, '\n')
        dest:write("'伤害吸收' = ", shxs, '\n')
        dest:write("'绝学领悟' = ", jxlw, '\n')
        dest:write("'内力' = ", minjie, '\n')
        dest:write("'伤害加成' = ", shjc, '\n')
    end
    file:close()
end

main()