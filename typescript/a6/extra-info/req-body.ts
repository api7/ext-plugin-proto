// automatically generated by the FlatBuffers compiler, do not modify

import * as flatbuffers from 'flatbuffers';

export class ReqBody {
  bb: flatbuffers.ByteBuffer|null = null;
  bb_pos = 0;
__init(i:number, bb:flatbuffers.ByteBuffer):ReqBody {
  this.bb_pos = i;
  this.bb = bb;
  return this;
}

static getRootAsReqBody(bb:flatbuffers.ByteBuffer, obj?:ReqBody):ReqBody {
  return (obj || new ReqBody()).__init(bb.readInt32(bb.position()) + bb.position(), bb);
}

static getSizePrefixedRootAsReqBody(bb:flatbuffers.ByteBuffer, obj?:ReqBody):ReqBody {
  bb.setPosition(bb.position() + flatbuffers.SIZE_PREFIX_LENGTH);
  return (obj || new ReqBody()).__init(bb.readInt32(bb.position()) + bb.position(), bb);
}

static startReqBody(builder:flatbuffers.Builder) {
  builder.startObject(0);
}

static endReqBody(builder:flatbuffers.Builder):flatbuffers.Offset {
  const offset = builder.endObject();
  return offset;
}

static createReqBody(builder:flatbuffers.Builder):flatbuffers.Offset {
  ReqBody.startReqBody(builder);
  return ReqBody.endReqBody(builder);
}
}
