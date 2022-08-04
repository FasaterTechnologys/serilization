String toSpaceSeparatedString(String s) {
  const n = 3;
  String result = "";
  bool doubleint = false;
  String don = "";
  for (int i = 0; i < s.length; i++) {
    if (s[i] == ".") {
      doubleint = true;
    } else if (doubleint == true) {
      for (int j = i; j < s.length; j++) {
        don = don + s[j];
      }
      break;
    } else {
      result = result + s[i];
    }
  }
  var i = result.length - n;
  while (i > 0) {
    result = result.replaceRange(i, i, ' ');
    i -= n;
  }
  if (doubleint == true) {
    result = result + "," + don;
  }
  return result;
}
