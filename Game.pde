class Game {
  private String player1 = "Player 1", player2 = "Player 2";
  public ArrayList<Board> p1 = new ArrayList<Board>();
  public ArrayList<Board> p2 = new ArrayList<Board>();
  public boolean board[][] = new boolean[][] {{false, false, false},
                                              {false, false, false},
                                              {false, false, false}};
  private boolean turn = true;
  public void nextTurn() {
    turn = !turn;
  }

  public boolean whatTurn(){
    return turn;
  }

  public String getTurn() {
    if (turn) {
      return player1;
    } else {
      return player2;
    }
  }
  
}