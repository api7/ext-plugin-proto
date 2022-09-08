package = "ext-plugin-proto"
version = "0.6.0-0"
source = {
   url = "git://github.com/api7/ext-plugin-proto",
   branch = "v0.6.0",
}

description = {
   summary = "The proto and generated code files used by APISIX's external plugin mechanism",
   homepage = "https://github.com/api7/ext-plugin-proto",
   license = "Apache License 2.0",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
        -- generated with find lua/ -type f | cut -c5- | awk '{ print "[\""$0"\"] = \"lua/"$0"\","}'
        ["flatbuffers.lua"] = "lua/flatbuffers.lua",
        ["flatbuffers/view.lua"] = "lua/flatbuffers/view.lua",
        ["flatbuffers/compat.lua"] = "lua/flatbuffers/compat.lua",
        ["flatbuffers/compat_5_1.lua"] = "lua/flatbuffers/compat_5_1.lua",
        ["flatbuffers/compat_5_3.lua"] = "lua/flatbuffers/compat_5_3.lua",
        ["flatbuffers/builder.lua"] = "lua/flatbuffers/builder.lua",
        ["flatbuffers/binaryarray.lua"] = "lua/flatbuffers/binaryarray.lua",
        ["flatbuffers/numTypes.lua"] = "lua/flatbuffers/numTypes.lua",
        ["flatbuffers/compat_luajit.lua"] = "lua/flatbuffers/compat_luajit.lua",
        ["A6/Method.lua"] = "lua/A6/Method.lua",
        ["A6/TextEntry.lua"] = "lua/A6/TextEntry.lua",
        ["A6/HTTPRespCall/Req.lua"] = "lua/A6/HTTPRespCall/Req.lua",
        ["A6/HTTPRespCall/Resp.lua"] = "lua/A6/HTTPRespCall/Resp.lua",
        ["A6/PrepareConf/Req.lua"] = "lua/A6/PrepareConf/Req.lua",
        ["A6/PrepareConf/Resp.lua"] = "lua/A6/PrepareConf/Resp.lua",
        ["A6/HTTPReqCall/Action.lua"] = "lua/A6/HTTPReqCall/Action.lua",
        ["A6/HTTPReqCall/Req.lua"] = "lua/A6/HTTPReqCall/Req.lua",
        ["A6/HTTPReqCall/Stop.lua"] = "lua/A6/HTTPReqCall/Stop.lua",
        ["A6/HTTPReqCall/Rewrite.lua"] = "lua/A6/HTTPReqCall/Rewrite.lua",
        ["A6/HTTPReqCall/Resp.lua"] = "lua/A6/HTTPReqCall/Resp.lua",
        ["A6/DataEntry.lua"] = "lua/A6/DataEntry.lua",
        ["A6/ExtraInfo/Var.lua"] = "lua/A6/ExtraInfo/Var.lua",
        ["A6/ExtraInfo/ReqBody.lua"] = "lua/A6/ExtraInfo/ReqBody.lua",
        ["A6/ExtraInfo/Info.lua"] = "lua/A6/ExtraInfo/Info.lua",
        ["A6/ExtraInfo/Req.lua"] = "lua/A6/ExtraInfo/Req.lua",
        ["A6/ExtraInfo/RespBody.lua"] = "lua/A6/ExtraInfo/RespBody.lua",
        ["A6/ExtraInfo/Resp.lua"] = "lua/A6/ExtraInfo/Resp.lua",
        ["A6/Err/Code.lua"] = "lua/A6/Err/Code.lua",
        ["A6/Err/Resp.lua"] = "lua/A6/Err/Resp.lua",
    }
}
