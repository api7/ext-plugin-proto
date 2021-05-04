package = "ext-plugin-proto"
version = "0.1.1-0"
source = {
   url = "git://github.com/api7/ext-plugin-proto",
   branch = "v0.1.1",
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
        ["A6.DataEntry"] = "lua/A6/DataEntry.lua",
        ["A6.TextEntry"] = "lua/A6/TextEntry.lua",
        ["A6.Method"] = "lua/A6/Method.lua",
        ["A6.PrepareConf.Req"] = "lua/A6/PrepareConf/Req.lua",
        ["A6.PrepareConf.Resp"] = "lua/A6/PrepareConf/Resp.lua",
        ["A6.HTTPReqCall.Action"] = "lua/A6/HTTPReqCall/Action.lua",
        ["A6.HTTPReqCall.Rewrite"] = "lua/A6/HTTPReqCall/Rewrite.lua",
        ["A6.HTTPReqCall.Req"] = "lua/A6/HTTPReqCall/Req.lua",
        ["A6.HTTPReqCall.Resp"] = "lua/A6/HTTPReqCall/Resp.lua",
        ["A6.HTTPReqCall.Stop"] = "lua/A6/HTTPReqCall/Stop.lua",
        ["A6.Err.Code"] = "lua/A6/Err/Code.lua",
        ["A6.Err.Resp"] = "lua/A6/Err/Resp.lua",
        ["flatbuffers"] = "lua/flatbuffers.lua",
        ["flatbuffers.compat"] = "lua/flatbuffers/compat.lua",
        ["flatbuffers.binaryarray"] = "lua/flatbuffers/binaryarray.lua",
        ["flatbuffers.builder"] = "lua/flatbuffers/builder.lua",
        ["flatbuffers.compat_luajit"] = "lua/flatbuffers/compat_luajit.lua",
        ["flatbuffers.compat_5_3"] = "lua/flatbuffers/compat_5_3.lua",
        ["flatbuffers.numTypes"] = "lua/flatbuffers/numTypes.lua",
        ["flatbuffers.view"] = "lua/flatbuffers/view.lua",
    }
}
