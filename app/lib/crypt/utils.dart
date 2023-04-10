import 'dart:typed_data';
import 'dart:math' as math;

List<int> calculateXor(List<int> a, List<int> b) {
  var x1 = ByteData.view(Uint8List.fromList(a).buffer).getUint32(0, Endian.big);
  var x2 = ByteData.view(Uint8List.fromList(b).buffer).getUint32(0, Endian.big);

  var xor = x1 ^ x2;

  var result = Uint8List(4);
  ByteData.view(result.buffer).setUint32(0, xor, Endian.big);

  return result;
}

List<int> calculateAddMod32(List<int> a, List<int> b) {
  var x1 = ByteData.view(Uint8List.fromList(a).buffer).getUint32(0, Endian.big);
  var x2 = ByteData.view(Uint8List.fromList(b).buffer).getUint32(0, Endian.big);

  var add = (x1 + x2) % math.pow(2, 32);

  var result = Uint8List(4);
  ByteData.view(result.buffer).setUint32(0, add.toInt(), Endian.big);

  return result;
}
