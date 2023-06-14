class Pecahan {
  static String rupiah({required int value, bool withRp = false}) {
    String result = '';
    String strValue = value.toString();
    int count = 0;
    for (int i = strValue.length - 1; i >= 0; i--) {
      count++;
      result = strValue[i] + result;
      if (count == 3 && i != 0) {
        result = '.' + result;
        count = 0;
      }
    }
    if (withRp) {
      result = 'Rp. ' + result;
    }
    return result;
  }
}