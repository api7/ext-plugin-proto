// automatically generated by the FlatBuffers compiler, do not modify

package A6.HTTPReqCall;

import java.nio.*;
import java.lang.*;
import java.util.*;
import com.google.flatbuffers.*;

@SuppressWarnings("unused")
public final class Rewrite extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_1_12_0(); }
  public static Rewrite getRootAsRewrite(ByteBuffer _bb) { return getRootAsRewrite(_bb, new Rewrite()); }
  public static Rewrite getRootAsRewrite(ByteBuffer _bb, Rewrite obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public Rewrite __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public String path() { int o = __offset(4); return o != 0 ? __string(o + bb_pos) : null; }
  public ByteBuffer pathAsByteBuffer() { return __vector_as_bytebuffer(4, 1); }
  public ByteBuffer pathInByteBuffer(ByteBuffer _bb) { return __vector_in_bytebuffer(_bb, 4, 1); }
  public A6.TextEntry headers(int j) { return headers(new A6.TextEntry(), j); }
  public A6.TextEntry headers(A6.TextEntry obj, int j) { int o = __offset(6); return o != 0 ? obj.__assign(__indirect(__vector(o) + j * 4), bb) : null; }
  public int headersLength() { int o = __offset(6); return o != 0 ? __vector_len(o) : 0; }
  public A6.TextEntry.Vector headersVector() { return headersVector(new A6.TextEntry.Vector()); }
  public A6.TextEntry.Vector headersVector(A6.TextEntry.Vector obj) { int o = __offset(6); return o != 0 ? obj.__assign(__vector(o), 4, bb) : null; }
  public A6.TextEntry args(int j) { return args(new A6.TextEntry(), j); }
  public A6.TextEntry args(A6.TextEntry obj, int j) { int o = __offset(8); return o != 0 ? obj.__assign(__indirect(__vector(o) + j * 4), bb) : null; }
  public int argsLength() { int o = __offset(8); return o != 0 ? __vector_len(o) : 0; }
  public A6.TextEntry.Vector argsVector() { return argsVector(new A6.TextEntry.Vector()); }
  public A6.TextEntry.Vector argsVector(A6.TextEntry.Vector obj) { int o = __offset(8); return o != 0 ? obj.__assign(__vector(o), 4, bb) : null; }

  public static int createRewrite(FlatBufferBuilder builder,
      int pathOffset,
      int headersOffset,
      int argsOffset) {
    builder.startTable(3);
    Rewrite.addArgs(builder, argsOffset);
    Rewrite.addHeaders(builder, headersOffset);
    Rewrite.addPath(builder, pathOffset);
    return Rewrite.endRewrite(builder);
  }

  public static void startRewrite(FlatBufferBuilder builder) { builder.startTable(3); }
  public static void addPath(FlatBufferBuilder builder, int pathOffset) { builder.addOffset(0, pathOffset, 0); }
  public static void addHeaders(FlatBufferBuilder builder, int headersOffset) { builder.addOffset(1, headersOffset, 0); }
  public static int createHeadersVector(FlatBufferBuilder builder, int[] data) { builder.startVector(4, data.length, 4); for (int i = data.length - 1; i >= 0; i--) builder.addOffset(data[i]); return builder.endVector(); }
  public static void startHeadersVector(FlatBufferBuilder builder, int numElems) { builder.startVector(4, numElems, 4); }
  public static void addArgs(FlatBufferBuilder builder, int argsOffset) { builder.addOffset(2, argsOffset, 0); }
  public static int createArgsVector(FlatBufferBuilder builder, int[] data) { builder.startVector(4, data.length, 4); for (int i = data.length - 1; i >= 0; i--) builder.addOffset(data[i]); return builder.endVector(); }
  public static void startArgsVector(FlatBufferBuilder builder, int numElems) { builder.startVector(4, numElems, 4); }
  public static int endRewrite(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }

  public static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public Rewrite get(int j) { return get(new Rewrite(), j); }
    public Rewrite get(Rewrite obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
}
