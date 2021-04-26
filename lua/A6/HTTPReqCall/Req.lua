-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: HTTPReqCall

local flatbuffers = require('flatbuffers')

local Req = {} -- the module
local Req_mt = {} -- the class metatable

function Req.New()
    local o = {}
    setmetatable(o, {__index = Req_mt})
    return o
end
function Req.GetRootAsReq(buf, offset)
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Req.New()
    o:Init(buf, n + offset)
    return o
end
function Req_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Req_mt:Id()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint32, o + self.view.pos)
    end
    return 0
end
function Req_mt:SrcIp(j)
    local o = self.view:Offset(6)
    if o ~= 0 then
        local a = self.view:Vector(o)
        return self.view:Get(flatbuffers.N.Uint8, a + ((j-1) * 1))
    end
    return 0
end
function Req_mt:SrcIpLength()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Req_mt:Method()
    local o = self.view:Offset(8)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint8, o + self.view.pos)
    end
    return 0
end
function Req_mt:Path()
    local o = self.view:Offset(10)
    if o ~= 0 then
        return self.view:String(o + self.view.pos)
    end
end
function Req_mt:Args(j)
    local o = self.view:Offset(12)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Req_mt:ArgsLength()
    local o = self.view:Offset(12)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Req_mt:Headers(j)
    local o = self.view:Offset(14)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Req_mt:HeadersLength()
    local o = self.view:Offset(14)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Req_mt:ConfToken()
    local o = self.view:Offset(16)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint32, o + self.view.pos)
    end
    return 0
end
function Req_mt:ExtraInfo(j)
    local o = self.view:Offset(18)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.DataEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Req_mt:ExtraInfoLength()
    local o = self.view:Offset(18)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Req.Start(builder) builder:StartObject(8) end
function Req.AddId(builder, id) builder:PrependUint32Slot(0, id, 0) end
function Req.AddSrcIp(builder, srcIp) builder:PrependUOffsetTRelativeSlot(1, srcIp, 0) end
function Req.StartSrcIpVector(builder, numElems) return builder:StartVector(1, numElems, 1) end
function Req.AddMethod(builder, method) builder:PrependUint8Slot(2, method, 0) end
function Req.AddPath(builder, path) builder:PrependUOffsetTRelativeSlot(3, path, 0) end
function Req.AddArgs(builder, args) builder:PrependUOffsetTRelativeSlot(4, args, 0) end
function Req.StartArgsVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Req.AddHeaders(builder, headers) builder:PrependUOffsetTRelativeSlot(5, headers, 0) end
function Req.StartHeadersVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Req.AddConfToken(builder, confToken) builder:PrependUint32Slot(6, confToken, 0) end
function Req.AddExtraInfo(builder, extraInfo) builder:PrependUOffsetTRelativeSlot(7, extraInfo, 0) end
function Req.StartExtraInfoVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Req.End(builder) return builder:EndObject() end

return Req -- return the module