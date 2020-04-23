void game() {
  background(green);

  println(objects.size());

  //Process all the game objects!
  int i = 0;
  while (i < objects.size()) {
    GameObject currentObject = objects.get(i);
    currentObject.show();
    currentObject.act();
    if (currentObject.hp <=  0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void gameClicks() {
  myPlayer.shoot();
}
