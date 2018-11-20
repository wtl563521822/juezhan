---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/20 11:05
---

local dialog = {}
et.dialog = dialog

local mt = {}
dialog.__index = mt

mt.type='dialog'

function mt:clear_and_destroy()
    jass.DialogClear(self.handle)
    jass.DialogDestroy(self.handle)
end

function dialog.create(player, message, buttons)
    local d = setmetatable({}, dialog)
    d.handle = jass.CreateDialog()
    jass.DialogSetMessage(d.handle, message)
    for name in pairs(buttons) do
        local b = jass.DialogAddButton(d.handle, name, 0)
        local trg = war3.CreateTrigger(function()
            et.event_notify(b, '按钮-被点击', d, player)
        end)
        jass.TriggerRegisterDialogButtonEvent(trg, b)
        d.buttons[name] = b
    end
    jass.DialogDisplay(player.handle, d.handle, true)
    return d
end

return dialog