---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/16 12:54
---

local function init()
    --抽血术
    et.game:event '单位-受攻击' (function(self, source, target)
        if game.variable.attack_creeps[source] and et.player(7):get_tech(1378889777) == 50 and not is_in(target:get_id(), {1214409837,1865429574,1865429575}) and target ~= udg_ZhengPaiWL then
            if commonutil.random_int(1, 100) <= 20 then
                target:set_life_percent(target:get_life_percent()- 6)
            end
        end
    end)
end
init()