ArrayList<Character> text = new ArrayList<Character>(0);
//int textCursorIndex;
ArrayList<Integer> cols = new ArrayList<Integer>(0);
String displayText;

void setup() {
  size(500, 500);
}

void draw() {
  //for(int i=0; i<100; i++) listAddString(text, (i%10==0 ? i/10 : i%10)+"");
  colorMode(RGB, 4);
  background(0);
  _textSize(32);
  cols.clear();
  displayText=listToArray(text)+(frameCount%60<30 ? "_" : "");
  { //Rainbow Test
    /*float textWidth=text.size()+1; //+1 because when the cursor would flash the
    //characters would slightly change color, and +1 to include the cursor
    pushStyle();
    colorMode(HSB, textWidth);
    for(int i=0; i<textWidth; i++) cols.add(color(i, textWidth, textWidth));
    popStyle();*/
  }
  fill(3, 4);
  textAlign(LEFT, TOP);
  _textLeading(_textSize); //As opposed to _textSize+textDescent(), too big
  _text(displayText, 0, 0, width);
  //if(text.size()>0) surface.setTitle((int)text.get(text.size()-1)+"");
  surface.setTitle(cols.size()+"");
}
