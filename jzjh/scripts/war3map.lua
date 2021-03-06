---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/12/4 8:44
---

function main()
    --- 模块依赖
    -- 库类文件
    require 'util.id' -- ID字符串互转
    require 'util.log'
    require 'util.commonutil'
    require 'lni.lni'    -- 读取lni文件
    require 'util.najitest'    -- naji测试


    -- YDWE和网易的API
    require 'util.ydwe'
    require 'util.dzapi'
    require 'util.maxspeed'

    require 'et.init'
    require 'game.init' -- 游戏配置

    require 'map.system.lib.general_bonus'
    require 'map.system.lib.general_buff'

    --- 组件初始化
    et.part_time.init()
    et.unit.init()

    require 'map.static.destructables' --创建可破坏物
    require 'map.static.units' -- 创建地图上单位
    require 'map.static.environment' -- 初始化声音、天气等环境
    require 'map.static.detail' -- 初始化声音、天气等环境

    --- 初始化地图内置
    InitBlizzard()

    require 'map.static.map_start' -- 游戏开始运行

    -------------------------
    --- 装载各个系统
    -------------------------

    --- 键盘输入系统
    require 'map.system.keyinput'

    --- 装备系统
    require 'map.system.equipment.init'

    --- 副本系统 普通副本、桃花岛
    require 'map.system.instance.init'

    --- 历练系统
    require 'map.system.practice'

    --- 挑战系统 挑战BOSS、四圣兽

    --- 任务系统
    require 'map.system.task.init'

    --- 炼丹系统
    require 'map.system.pellet'


    --- 优先级靠后的系统
    --- 古董系统
    --- 合成物品系统
    --- 存档积分系统
    --- 兰馨换装系统


    --- 加载游戏逻辑
    require 'map.rules.rule' -- 游戏逻辑触发器

    --- 加载武功的逻辑

    log.info('main函数执行完毕')
end

function config()
    require 'game.init' -- 游戏配置
    SetMapName("决战江湖" .. game.config.version .. "正式版")
    SetMapDescription("决战江湖，等你来战")
    SetPlayers(9)
    SetTeams(9)
    SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    DefineStartLocation(0, 1728.0, -4160.0)
    DefineStartLocation(1, 1728.0, -4160.0)
    DefineStartLocation(2, 1728.0, -4160.0)
    DefineStartLocation(3, 1728.0, -4160.0)
    DefineStartLocation(4, 1728.0, -4160.0)
    DefineStartLocation(5, -3328.0, -15616.0)
    DefineStartLocation(6, 1728.0, -4160.0)
    DefineStartLocation(7, 1728.0, -4160.0)
    DefineStartLocation(8, 1728.0, -4160.0)
    -- Player setup
    InitCustomPlayerSlots()
    InitCustomTeams()
    InitAllyPriorities()
end