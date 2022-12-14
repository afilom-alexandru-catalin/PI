ArrayList<Character> listAddString(ArrayList<Character> list, String add) {
  ArrayList<Character> r = list;
  for(int i=0; i<add.length(); i++) r.add(add.charAt(i));
  return r;
}
