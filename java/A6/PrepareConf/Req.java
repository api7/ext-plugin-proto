// automatically generated by the FlatBuffers compiler, do not modify

package A6.PrepareConf;

import java.nio.*;
import java.lang.*;
import java.util.*;
import com.google.flatbuffers.*;

@SuppressWarnings("unused")
public final class Req extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_1_12_0(); }
  public static Req getRootAsReq(ByteBuffer _bb) { return getRootAsReq(_bb, new Req()); }
  public static Req getRootAsReq(ByteBuffer _bb, Req obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public Req __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public A6.TextEntry conf(int j) { return conf(new A6.TextEntry(), j); }
  public A6.TextEntry conf(A6.TextEntry obj, int j) { int o = __offset(4); return o != 0 ? obj.__assign(__indirect(__vector(o) + j * 4), bb) : null; }
  public int confLength() { int o = __offset(4); return o != 0 ? __vector_len(o) : 0; }
  public A6.TextEntry.Vector confVector() { return confVector(new A6.TextEntry.Vector()); }
  public A6.TextEntry.Vector confVector(A6.TextEntry.Vector obj) { int o = __offset(4); return o != 0 ? obj.__assign(__vector(o), 4, bb) : null; }

  public static int createReq(FlatBufferBuilder builder,
      int confOffset) {
    builder.startTable(1);
    Req.addConf(builder, confOffset);
    return Req.endReq(builder);
  }

  public static void startReq(FlatBufferBuilder builder) { builder.startTable(1); }
  public static void addConf(FlatBufferBuilder builder, int confOffset) { builder.addOffset(0, confOffset, 0); }
  public static int createConfVector(FlatBufferBuilder builder, int[] data) { builder.startVector(4, data.length, 4); for (int i = data.length - 1; i >= 0; i--) builder.addOffset(data[i]); return builder.endVector(); }
  public static void startConfVector(FlatBufferBuilder builder, int numElems) { builder.startVector(4, numElems, 4); }
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

