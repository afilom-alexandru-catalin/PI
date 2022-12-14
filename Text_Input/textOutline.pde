void textOutline(String text, float x, float y, color textColor, color outline) {
  fill(outline);
  for(int i=-2; i<2; i++) {
    text(text, x+i, y);
    text(text, x, y+i);
  }
  fill(textColor);
  text(text, x, y);
}

void textOutline(char text, float x, float y, color textColor, color outline) {
  textOutline(text+"", x, y, textColor, outline);
}
