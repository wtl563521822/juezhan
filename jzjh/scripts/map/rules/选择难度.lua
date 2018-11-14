---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/10/29 0029 20:45
---
--调整游戏难度
function GameNanDu_Condition()
    --非特殊事件模式、非生存模式
    return is_in(game.config.mode, {'normal', 'fast'})
end
function GameNanDu()
    local t = GetTriggeringTrigger()
    local id = GetHandleId(t)
    local i = 0
    local level = 0
    if S2I(SubStringBJ(GetEventPlayerChatString(), 3, 5)) == 0 then
        i = 10
    else
        i = S2I(SubStringBJ(GetEventPlayerChatString(), 3, 5)) * 10
    end
    level = GetPlayerTechCountSimple(1378889777, Player(12))
    if level == 50 then
        DisplayTextToPlayer(Player(0), 0, 0, "当前已为最高难度了")
    else
        if level + i >= 50 then
            i = 50 - level
        end
        AddPlayerTechResearched(Player(12), 1378889777, i)
        AddPlayerTechResearched(Player(6), 1378889777, i)
        AddPlayerTechResearched(Player(15), 1378889777, i)
        udg_nandu = udg_nandu + i // 10
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "玩家1输入“up”提高了游戏难度，目前游戏难度为" .. (I2S(udg_nandu) or ""))
        if udg_nandu == 5 then
            DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
        end
    end
    t = nil
end
function ChooseNanDu()
    DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FF40主机开始选择游戏难度")
    if GetPlayerController(Player(0)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(0)) == PLAYER_SLOT_STATE_PLAYING then -- INLINED!!
        DialogClear(udg_nan)
        DialogSetMessage(udg_nan, "请选择游戏难度")
        if udg_nandu <= 0 then
            udg_nan0 = DialogAddButtonBJ(udg_nan, "|cFF00CC00初入江湖")
        end
        if udg_nandu <= 1 then
            udg_nan1 = DialogAddButtonBJ(udg_nan, "|cFFCC0066牛刀小试")
        end
        if udg_nandu <= 2 then
            udg_nan2 = DialogAddButtonBJ(udg_nan, "|cFFFF6600登堂入室")
        end
        if udg_nandu <= 3 then
            udg_nan3 = DialogAddButtonBJ(udg_nan, "|cFF0041FF炉火纯青")
        end
        if udg_nandu <= 4 then
            udg_nan4 = DialogAddButtonBJ(udg_nan, "|cFF1FBF00华山论剑")
        end
        if udg_nandu <= 5 then
            udg_nan5 = DialogAddButtonBJ(udg_nan, "|cFFFF0000决战江湖")
        end
        DialogDisplayBJ(true, udg_nan, Player(0))
    end
end
-- 设置游戏难度和经验获得率的函数
function setDifficultyAndExpRate(difficulty)
    udg_nandu = difficulty
    SetPlayerHandicapXPBJ(Player(0), 200.0 - 20.0 * difficulty)
    SetPlayerHandicapXPBJ(Player(1), 200.0 - 20.0 * difficulty)
    SetPlayerHandicapXPBJ(Player(2), 200.0 - 20.0 * difficulty)
    SetPlayerHandicapXPBJ(Player(3), 200.0 - 20.0 * difficulty)
    SetPlayerHandicapXPBJ(Player(4), 200.0 - 20.0 * difficulty)
end
function ChooseNanDu_Action()
    if GetClickedButton() == udg_nan0 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF00CC00初入江湖")
        SetPlayerTechResearched(Player(12), 1378889777, 0)
        SetPlayerTechResearched(Player(6), 1378889777, 0)
        SetPlayerTechResearched(Player(15), 1378889777, 0)
        setDifficultyAndExpRate(0)
    end
    if GetClickedButton() == udg_nan1 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFCC0066牛刀小试")
        SetPlayerTechResearched(Player(12), 1378889777, 10)
        SetPlayerTechResearched(Player(6), 1378889777, 10)
        SetPlayerTechResearched(Player(15), 1378889777, 10)
        setDifficultyAndExpRate(1)
    end
    if GetClickedButton() == udg_nan2 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFFF6600登堂入室")
        SetPlayerTechResearched(Player(12), 1378889777, 20)
        SetPlayerTechResearched(Player(6), 1378889777, 20)
        SetPlayerTechResearched(Player(15), 1378889777, 20)
        setDifficultyAndExpRate(2)
    end
    if GetClickedButton() == udg_nan3 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF0041FF炉火纯青")
        SetPlayerTechResearched(Player(12), 1378889777, 30)
        SetPlayerTechResearched(Player(6), 1378889777, 30)
        SetPlayerTechResearched(Player(15), 1378889777, 30)
        setDifficultyAndExpRate(3)
    end
    if GetClickedButton() == udg_nan4 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFF1FBF00华山论剑")
        SetPlayerTechResearched(Player(12), 1378889777, 40)
        SetPlayerTechResearched(Player(6), 1378889777, 40)
        SetPlayerTechResearched(Player(15), 1378889777, 40)
        setDifficultyAndExpRate(4)
    end
    if GetClickedButton() == udg_nan5 then
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF主机选择了难度|cFFFF0000决战江湖")
        DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|cff00FFFF该模式下进攻怪具有|cFFFF0000抽血术")
        SetPlayerTechResearched(Player(12), 1378889777, 50)
        SetPlayerTechResearched(Player(6), 1378889777, 50)
        SetPlayerTechResearched(Player(15), 1378889777, 50)
        setDifficultyAndExpRate(5)
    end
end

local function init()
    -- up提升游戏难度
    Sh = CreateTrigger()
    TriggerRegisterPlayerChatEvent(Sh, Player(0), "up", false)
    TriggerAddCondition(Sh, Condition(GameNanDu_Condition))
    TriggerAddAction(Sh, GameNanDu)
    local t = CreateTrigger()
    TriggerRegisterDialogEvent(t, udg_nan)
    TriggerAddAction(t, ChooseNanDu_Action)
end
init()