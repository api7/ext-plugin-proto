// automatically generated by the FlatBuffers compiler, do not modify

package io.github.api7.A6.ExtraInfo;

import java.nio.*;
import java.lang.*;
import java.util.*;
import com.google.flatbuffers.*;

@SuppressWarnings("unused")
public final class Req extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_2_0_0(); }
  public static Req getRootAsReq(ByteBuffer _bb) { return getRootAsReq(_bb, new Req()); }
  public static Req getRootAsReq(ByteBuffer _bb, Req obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public Req __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public byte infoType() { int o = __offset(4); return o != 0 ? bb.get(o + bb_pos) : 0; }
  public Table info(Table obj) { int o = __offset(6); return o != 0 ? __union(obj, o + bb_pos) : null; }

  public static int createReq(FlatBufferBuilder builder,
      byte info_type,
      int infoOffset) {
    builder.startTable(2);
    Req.addInfo(builder, infoOffset);
    Req.addInfoType(builder, info_type);
    return Req.endReq(builder);
  }

  public static void startReq(FlatBufferBuilder builder) { builder.startTable(2); }
  public static void addInfoType(FlatBufferBuilder builder, byte infoType) { builder.addByte(0, infoType, 0); }
  public static void addInfo(FlatBufferBuilder builder, int infoOffset) { builder.addOffset(1, infoOffset, 0); }
  public static int endReq(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }

  public static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public Req get(int j) { return get(new Req(), j); }
    public Req get(Req obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
}

