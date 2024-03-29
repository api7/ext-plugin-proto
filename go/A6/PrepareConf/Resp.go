// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package PrepareConf

import (
	flatbuffers "github.com/google/flatbuffers/go"
)

type Resp struct {
	_tab flatbuffers.Table
}

func GetRootAsResp(buf []byte, offset flatbuffers.UOffsetT) *Resp {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &Resp{}
	x.Init(buf, n+offset)
	return x
}

func GetSizePrefixedRootAsResp(buf []byte, offset flatbuffers.UOffsetT) *Resp {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &Resp{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func (rcv *Resp) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *Resp) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *Resp) ConfToken() uint32 {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.GetUint32(o + rcv._tab.Pos)
	}
	return 0
}

func (rcv *Resp) MutateConfToken(n uint32) bool {
	return rcv._tab.MutateUint32Slot(4, n)
}

func RespStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func RespAddConfToken(builder *flatbuffers.Builder, confToken uint32) {
	builder.PrependUint32Slot(0, confToken, 0)
}
func RespEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}
