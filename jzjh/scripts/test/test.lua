---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 10:23
---


local function get_center_point(tab)
    local x = (tab[1] + tab[3]) / 2
    local y = (tab[2] + tab[4]) / 2
    print(x, ',', y)
end

get_center_point{ -1056.0, 5024.0, -448.0, 5600.0 }
