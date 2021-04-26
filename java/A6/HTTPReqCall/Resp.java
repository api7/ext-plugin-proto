// automatically generated by the FlatBuffers compiler, do not modify

package A6.HTTPReqCall;

import java.nio.*;
import java.lang.*;
import java.util.*;
import com.google.flatbuffers.*;

@SuppressWarnings("unused")
public final class Resp extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_1_12_0(); }
  public static Resp getRootAsResp(ByteBuffer _bb) { return getRootAsResp(_bb, new Resp()); }
  public static Resp getRootAsResp(ByteBuffer _bb, Resp obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public Resp __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public long id() { int o = __offset(4); return o != 0 ? (long)bb.getInt(o + bb_pos) & 0xFFFFFFFFL : 0L; }
  public byte actionType() { int o = __offset(6); return o != 0 ? bb.get(o + bb_pos) : 0; }
  public Table action(Table obj) { int o = __offset(8); return o != 0 ? __union(obj, o + bb_pos) : null; }

  public static int createResp(FlatBufferBuilder builder,
      long id,
      byte action_type,
      int actionOffset) {
    builder.startTable(3);
    Resp.addAction(builder, actionOffset);
    Resp.addId(builder, id);
    Resp.addActionType(builder, action_type);
    return Resp.endResp(builder);
  }

  public static void startResp(FlatBufferBuilder builder) { builder.startTable(3); }
  public static void addId(FlatBufferBuilder builder, long id) { builder.addInt(0, (int)id, (int)0L); }
  public static void addActionType(FlatBufferBuilder builder, byte actionType) { builder.addByte(1, actionType, 0); }
  public static void addAction(FlatBufferBuilder builder, int actionOffset) { builder.addOffset(2, actionOffset, 0); }
  public static int endResp(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }

  public static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public Resp get(int j) { return get(new Resp(), j); }
    public Resp get(Resp obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
}

