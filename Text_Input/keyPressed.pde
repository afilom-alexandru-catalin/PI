final int CTRL_Z=26;

void keyPressed() {
  if(key!=CODED) {
    if(key==BACKSPACE | key==CTRL_Z) {
      if(text.size()>0) {
        text.remove(text.size()-1);
        //textCursorIndex--;
      }
    }
    else /*Needs more exception keys*/ {
      text.add(key);
      //textCursorIndex++;
    }
  }
}
