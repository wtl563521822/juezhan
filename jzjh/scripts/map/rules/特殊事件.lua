---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/16 12:49
---
local function liao_attack()
    if Sd[1] ~= 2 and Sd[2] ~= 2 and Sd[3] ~= 2 and Sd[4] ~= 2 and Sd[5] ~= 2 and game.config.mode == 'special' then
        force.send_message("|CFFFF0033激活特殊事件|cFFDDA0DD※边境入侵※")
        force.send_message("|CFFFF0033由于激活特殊事件，辽国派出骑兵前来进攻，请准备防御")
        et.timer(2000, 40, function()
            local last = et.player(7):create_unit(1751871081, et.point(-5600, 100))
            game.variable.attack_creeps[last] = et.unit(last)
            last:issue_order(851983, udg_ZhengPaiWL)
        end)
    end
end

local function no_lingjiu()
    for i = 1, 5 do
        local p = et.player(i)
        local h = p.hero
        if h['门派'].name == '灵鹫宫' then
            return false
        end
    end
    return true
end

local function lingjiu_attack()
    if no_lingjiu() and game.config.mode == 'special' then
        force.send_message("|CFFFF0033激活特殊事件|cFFDDA0DD※灵鹫宫劫※")
        force.send_message("|CFFFF0033由于激活特殊事件，灵鹫宫派出高手前来进攻，请准备防御")

        local last = et.player(7):create_unit(1852270642, et.point(1800, -100))
        game.variable.attack_creeps[last] = et.unit(last)
        last:issue_order(851983, udg_ZhengPaiWL)

        last = et.player(7):create_unit(1852207984, et.point(1800, -100))
        game.variable.attack_creeps[last] = et.unit(last)
        last:issue_order(851983, udg_ZhengPaiWL)

        last = et.player(7):create_unit(1852663652, et.point(1800, -100))
        game.variable.attack_creeps[last] = et.unit(last)
        last:issue_order(851983, udg_ZhengPaiWL)
    end
end

local function init()
    -- 特殊事件——辽国进攻
    et.wait(2100 * 1000, function()
        liao_attack()
    end)

    -- 特殊事件——灵鹫宫进攻
    --灵鹫宫进攻：触发条件，有玩家选择了灵鹫宫
    et.wait(3000 * 1000, function()
        lingjiu_attack()
    end)

    et.game:event '玩家-聊天'(function(self, p, s)
        if s == "test_liao" then
            liao_attack()
        elseif s == "test_lingjiu" then
            lingjiu_attack()
        end
    end)
end

init()