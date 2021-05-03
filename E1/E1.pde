boolean[][] grid ;

// # of columns and rows
int cols = 10 ;
int rows = 10 ;
int cellWidth; 
int cellHeight;

final int GAME_RUN=0, GAME_WIN=1;
int gameState=0;

// light color
color turnOnColor = #F0F5FB ;
color turnOffColor = #022547 ;

PImage win;

void setup() {
  size(400, 400) ;
  stroke(#95A5B5);
  cellWidth = width / cols  ;
  cellHeight = height / rows ; 
  grid = new boolean[cols][rows] ;
  win=loadImage("win.jpg");

  // Reset game
  init();
}

void draw() {
  background(0) ;

  switch(gameState){
    case GAME_RUN:
      // part1-1: displayGrid()
      // part2: isWin()
 
      break;
      
    case GAME_WIN:
      image(win, 0, 0);
      if (keyPressed) {
        init();
        gameState=GAME_RUN;
      }
      break;
  }
}

void init(){
  // part3
  grid[5][5] = true;
}


void mouseReleased() {
  int col = int(mouseX / cellWidth);
  int row = int(mouseY / cellHeight);
  
  // part1-2: pressLight(col,row);
}
