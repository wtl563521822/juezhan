---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/19 14:55
---

require 'test.test-main'
local trigger_util = require 'jass.util.trigger_util'
local test_util = require 'test.util.test_util'

local function test_join_part_time()
    local h = test_util.player1_select_hero()
    local tab = {
        manipulated_item = test_util.create_item(1227899190)
    }
    trigger_util.trig_player_unit_event(et.player(1).handle, jass.EVENT_PLAYER_UNIT_PICKUP_ITEM, h.handle, tab)
    trigger_util.trig_player_event(et.player(1).handle, jass.EVENT_PLAYER_END_CINEMATIC)
    --for k, v in pairs(h.part_times) do
    --    print(k, v)
    --    for k1, v1 in pairs(v) do
    --        print('\t', k1, v1)
    --    end
    --end
    --trigger_util.trig_player_unit_event(et.player(1).handle, jass.EVENT_PLAYER_UNIT_PICKUP_ITEM, h.handle, tab)
end

test_join_part_time()