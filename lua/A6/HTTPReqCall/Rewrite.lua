-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: HTTPReqCall

local flatbuffers = require('flatbuffers')

local Rewrite = {} -- the module
local Rewrite_mt = {} -- the class metatable

function Rewrite.New()
    local o = {}
    setmetatable(o, {__index = Rewrite_mt})
    return o
end
function Rewrite.GetRootAsRewrite(buf, offset)
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Rewrite.New()
    o:Init(buf, n + offset)
    return o
end
function Rewrite_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Rewrite_mt:Path()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:String(o + self.view.pos)
    end
end
function Rewrite_mt:Headers(j)
    local o = self.view:Offset(6)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Rewrite_mt:HeadersLength()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Rewrite_mt:Args(j)
    local o = self.view:Offset(8)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Rewrite_mt:ArgsLength()
    local o = self.view:Offset(8)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Rewrite.Start(builder) builder:StartObject(3) end
function Rewrite.AddPath(builder, path) builder:PrependUOffsetTRelativeSlot(0, path, 0) end
function Rewrite.AddHeaders(builder, headers) builder:PrependUOffsetTRelativeSlot(1, headers, 0) end
function Rewrite.StartHeadersVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Rewrite.AddArgs(builder, args) builder:PrependUOffsetTRelativeSlot(2, args, 0) end
function Rewrite.StartArgsVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Rewrite.End(builder) return builder:EndObject() end

return Rewrite -- return the module