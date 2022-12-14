float 
  _textSize,
  _textLeading;
boolean 
  _debugText=false, //Adds red lines at textAscent, textDescent and _textSize
  _nextLineChar=true, //Goes to the next line when user inputs \n escape character
  _nextLineWidth=true; //Goes to the next line when user types a character
    //that would get cut off by specified width.
    //I put these as globals because I'm tired of adding them in every instance of
    //function overloading.

void _textSize(float textSize) {
  textSize(textSize);
  _textSize=textSize;
}

void _text(String text, float x, float y, ArrayList<Integer> cols, float w) {
  float widthSum=0;
  pushMatrix();
    translate(x, y);
    /*pushStyle();
      stroke(255, 0, 0);
      noFill();
      rect(0, -textAscent(), textWidth(text), _textSize+textDescent());
      line(0, 0, textWidth(text), 0);
      line(0, -_textSize, textWidth(text), -_textSize);
    popStyle();*/
    pushMatrix();
      //float maxCol=widths.max();
      for(int i=0; i<text.length(); i++) {
        if((text.charAt(i)=='\n' & _nextLineChar) |
        (widthSum+textWidth(text.charAt(i))>w & _nextLineWidth)) {
          translate(-widthSum, _textLeading);
          widthSum=0;
        }
        /*colorMode(HSB, maxCol);
        for(int j=0; j<textWidth(text.charAt(i)); j++) {
          stroke(j, maxCol, maxCol);
          line(j, -_textSize, j, textDescent());
        }
        colorMode(RGB, 255);*/
        
        if(i<cols.size()) fill(cols.get(i));
        text/*Outline*/(text.charAt(i), 0, 0/*, 0, -1*/);
        
        if(_debugText) {
          pushStyle();
          pushMatrix();
          translate(0, _textLeading);
          stroke(255, 0, 0);
            colorMode(HSB, text.length());
            stroke(/*i*/0, text.length(), text.length()); //Yes I am obsessed with
            //RAINBOWS
            line(0, 0, textWidth(text.charAt(i)), 0);
            line(0, -textAscent(), textWidth(text.charAt(i)), -textAscent());
            line(0, textDescent(), textWidth(text.charAt(i)), textDescent());
            popMatrix();
        }
        translate(textWidth(text.charAt(i)), 0);
          pushMatrix();
          translate(0, _textLeading);
          if(_debugText) {
            line(0, -textAscent(), 0, textDescent());
            popStyle();
          }
          popMatrix();
        widthSum+=textWidth(text.charAt(i));
      }
    popMatrix();
  popMatrix();
}

void _text(char text, float x, float y, ArrayList<Integer> cols, float w) {
  _text(text+"", x, y, cols, w);
}

void _text(String text, float x, float y, float w) {
  ArrayList<Integer> cols = new ArrayList<Integer>(0);
  _text(text+"", x, y, cols, w);
}

void _text(char text, float x, float y, float w) {
  _text(text+"", x, y, w);
}

void _textLeading(float textLeading) {
  _textLeading=textLeading;
}
