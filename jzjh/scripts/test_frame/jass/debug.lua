---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by G_Seinfeld.
--- DateTime: 2018/11/9 14:02
---

local debug = {}

debug.handles = {}
debug.gchashes = {}

function debug.handle_ref(handle)
    table.insert(debug.handles, handle)
end

function debug.gchash(class, handle)
    debug.gchashes[class] = handle
end

return debug