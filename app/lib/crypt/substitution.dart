import 'dart:math';

class Substitution {
  late List<int> _box;

  Substitution() {
    _box = List<int>.generate(256, (i) => i);
    _init();
  }

  void _init() {
    Random rand = Random(202303051750);

    int intn(int i) {
      int num = rand.nextInt(pow(2, 63).toInt());
      return num % i;
    }

    for (int k = 0; k < 16; k++) {
      for (int i = 255; i > 0; i--) {
        int j = intn(i + 1);
        int temp = _box[i];
        _box[i] = _box[j];
        _box[j] = temp;
      }
    }
  }

  List<int> execute(List<int> chunk) {
    List<int> validatedChunk = _validate(chunk);
    return _forward(validatedChunk);
  }

  List<int> _validate(List<int> chunk) {
    List<int> result = List<int>.filled(4, 0);
    for (int i = 0; i < 4; i++) {
      if (i + 1 > chunk.length) {
        result[i] = 0;
      } else {
        result[i] = chunk[i];
      }
    }
    return result;
  }

  List<int> _forward(List<int> chunk) {
    List<int> output = List<int>.filled(4, 0);
    for (int i = 0; i < 4; i++) {
      output[i] = _box[chunk[i]];
    }
    return output;
  }

  List<int> reverse(List<int> chunk) {
    List<int> output = List<int>.filled(4, 0);
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 256; j++) {
        if (_box[j] == chunk[i]) {
          output[i] = j;
          break;
        }
      }
    }
    return output.sublist(0, 4);
  }
}
