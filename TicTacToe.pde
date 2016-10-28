PImage XImage, YImage;
Game game;

void setup() {
  size(500, 400);
  game = new Game();
}

void draw() {
  background(255);
  fill(0);
  //Board
  rect(100, 0, 5, 300);
  rect(200, 0, 5, 300);
  rect(0, 100, 300, 5);
  rect(0, 200, 300, 5);
  //Outline
  line(0, 300, 300, 300);
  line(300, 0, 300, 300);
  //Turn
  textSize(32);
  text("Turn: "+game.getTurn(), 5, 350);
}

void mousePressed() {
  //Row 1
  if (mouseX > 0 && mouseX < 100  && mouseY > 0 && mouseY < 100) {
    if(game.board[0][0] == false){
      game.board[0][0] = true;
      if(game.whatTurn()){
        game.p1.add(new Board(0,100));
      }
    }
  }
  if (mouseX > 100 && mouseX < 200  && mouseY > 0 && mouseY < 100) {
  }
  if (mouseX > 200 && mouseX < 300  && mouseY > 0 && mouseY < 100) {
  }
  //Row 2
  if (mouseX > 0 && mouseX < 100  && mouseY > 100 && mouseY < 200) {
  }
  if (mouseX > 100 && mouseX < 200  && mouseY > 100 && mouseY < 200) {
  }
  if (mouseX > 200 && mouseX < 300  && mouseY > 100 && mouseY < 200) {
  }
  //Row 3
  if (mouseX > 0 && mouseX < 100  && mouseY > 200 && mouseY < 300) {
  }
  if (mouseX > 100 && mouseX < 200  && mouseY > 200 && mouseY < 300) {
  }
  if (mouseX > 200 && mouseX < 300  && mouseY > 200 && mouseY < 300) {
  }
}