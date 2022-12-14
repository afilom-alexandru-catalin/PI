String listToArray(ArrayList<Character> x) {
  String r = "";
  for(int i=0; i<x.size(); i++) r+=x.get(i);
  return r;
}

String listToArray(StringList x) {
  String r = "";
  for(int i=0; i<x.size(); i++) r+=x.get(i);
  return r;
}
