// Code generated by the FlatBuffers compiler. DO NOT EDIT.

package PrepareConf

import (
	flatbuffers "github.com/google/flatbuffers/go"

	A6 "github.com/api7/ext-plugin-proto/go/A6"
)

type Req struct {
	_tab flatbuffers.Table
}

func GetRootAsReq(buf []byte, offset flatbuffers.UOffsetT) *Req {
	n := flatbuffers.GetUOffsetT(buf[offset:])
	x := &Req{}
	x.Init(buf, n+offset)
	return x
}

func GetSizePrefixedRootAsReq(buf []byte, offset flatbuffers.UOffsetT) *Req {
	n := flatbuffers.GetUOffsetT(buf[offset+flatbuffers.SizeUint32:])
	x := &Req{}
	x.Init(buf, n+offset+flatbuffers.SizeUint32)
	return x
}

func (rcv *Req) Init(buf []byte, i flatbuffers.UOffsetT) {
	rcv._tab.Bytes = buf
	rcv._tab.Pos = i
}

func (rcv *Req) Table() flatbuffers.Table {
	return rcv._tab
}

func (rcv *Req) Conf(obj *A6.TextEntry, j int) bool {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		x := rcv._tab.Vector(o)
		x += flatbuffers.UOffsetT(j) * 4
		x = rcv._tab.Indirect(x)
		obj.Init(rcv._tab.Bytes, x)
		return true
	}
	return false
}

func (rcv *Req) ConfLength() int {
	o := flatbuffers.UOffsetT(rcv._tab.Offset(4))
	if o != 0 {
		return rcv._tab.VectorLen(o)
	}
	return 0
}

func ReqStart(builder *flatbuffers.Builder) {
	builder.StartObject(1)
}
func ReqAddConf(builder *flatbuffers.Builder, conf flatbuffers.UOffsetT) {
	builder.PrependUOffsetTSlot(0, flatbuffers.UOffsetT(conf), 0)
}
func ReqStartConfVector(builder *flatbuffers.Builder, numElems int) flatbuffers.UOffsetT {
	return builder.StartVector(4, numElems, 4)
}
func ReqEnd(builder *flatbuffers.Builder) flatbuffers.UOffsetT {
	return builder.EndObject()
}