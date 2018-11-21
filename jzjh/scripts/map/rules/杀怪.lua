---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/15 21:38
---
local function add_reputation(killed)
    local p = killed:get_owner()
    local h = p.hero
    h.reputation = h.reputation + game.variable.wave // 7 + 1
    if math.fmod(killed:get_point_value(), 10) == 1 then
        h.reputation = h.reputation + 8
    end
end
local function init()
    -- 杀进攻怪及练功房怪
    et.game:event '单位-杀死单位'(function(self, killer, killed)
        if killer:is_enemy(killed) and is_in(killed:get_owner(), { et.player(7), et.player(8), et.player(13) }) then
            local p = killer:get_owner()
            local h = p.hero
            local hu = et(h.handle)
            if p == et.player(8) then
                -- 增加金钱
                local gold = math.floor(commonutil.random(0.95, 0.95 + 0.02 * h['福缘']) * 15 * (game.variable.wave + 1))
                if hu:has_item(1227896391) then
                    gold = gold * 2
                end
                p:add_gold(gold)

                -- 增加珍稀币
                if hu:has_item(1227896393) and commonutil.random_int(1, 100) <= 15 then
                    p:add_lumber(1)
                end

                -- 增加声望
                if hu:has_item(1227896390) then
                    h.reputation = h.reputation + game.variable.wave // 5
                end

                -- 增加经验
                if hu:has_item(1227896392) then
                    hu:add_exp(killed:get_level() * 20, true)
                end
            elseif p == et.player(7) then
                local gold = math.floor(commonutil.random(0.95, 0.95 + 0.02 * h['福缘']) * 25 * (game.variable.wave + 1))
                p:add_gold(gold)
                -- 名门
                if killed:get_point_value() == 102 then
                    local delta = 15 * (10 - et.player.countAlive()) // 10
                    for i = 1, 5 do
                        h.def_point = h.def_point + delta
                    end
                    ae = ae + 10 + et.player(7).get_tech(1378889777)
                    force.send_message("击杀名门高手，每位玩家获得守家积分+" .. delta)
                    local rand = commonutil.random_int(1, 100)
                    if rand <= 10 then
                        jass.CreateItem(YaoCao[commonutil.random_int(1, 12)], killed:getX(), killed:getY())
                    elseif rand <= 15 then
                        jass.CreateItem(1227897138, killed:getX(), killed:getY())
                    elseif rand <= 25 then
                        jass.CreateItem(1227896398, killed:getX(), killed:getY())
                    elseif rand <= 35 then
                        jass.CreateItem(1227896395, killed:getX(), killed:getY())
                    elseif rand <= 45 then
                        jass.CreateItem(1227896397, killed:getX(), killed:getY())
                    end

                    -- 进攻BOSS
                elseif killed:get_point_value() == 101 then
                    local delta = 15 * (10 - et.player.countAlive()) // 10
                    for i = 1, 5 do
                        h.def_point = h.def_point + delta
                    end
                    ae = ae + 40 + et.player(7).get_tech(1378889777)
                    force.send_message("击杀名门高手，每位玩家获得守家积分+" .. delta)
                    if commonutil.random_int(1, 100) <= 50 then
                        h['自由属性'] = h['自由属性'] + 1
                        force.send_message("|cFF33CC00" .. p:get_name() .. "|cFF33CC00击杀了BOSS" .. killed:get_name() .. "，|cFF33CC00获得了一个自由属性点")
                        jass.CreateItem(YaoCao[commonutil.random_int(1, 12)], killed:getX(), killed:getY())
                        jass.CreateItem(YaoCao[commonutil.random_int(1, 12)], killed:getX(), killed:getY())
                    end
                else
                    h.def_point = h.def_point + 1
                end
                -- 将死亡单位从单位组移除
                if game.variable.attack_creeps[killed] then
                    game.variable.attack_creeps[killed] = nil
                end

                add_reputation(killed)
            elseif p == et.player(13) then
                if p:is_player() then
                    h.reputation = h.reputation + 1
                    if math.fmod(killed:get_point_value(), 10) == 1 then
                        h.reputation = h.reputation + 5
                    elseif math.fmod(killed:get_point_value(), 10) == 2 then
                        h.reputation = h.reputation + 10
                    end
                end
            end
        end
    end)
end
init()