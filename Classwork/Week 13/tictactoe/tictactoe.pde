int [][] board;
boolean [][] clicked;
String winner;
int size = 3;
int turn = 1;

boolean player1 = true;
boolean player1Wins, player2Wins = false;
boolean tie = true;
boolean gameOver = false;

void setup(){
  size(600,300);
  textSize(24);
  
  board = new int[size][size];
  clicked = new boolean[size][size];
  
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){  
      board[i][j] = 0;
      clicked[i][j] = false;
    }
  }
}

void draw(){
  background(255);
  
  if(!gameOver){
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){  
      noFill();
      rect(300 + i*100, j*100, 100, 100);
      
      if(board[i][j] == 1){
        ellipse(350 + i*100, j*100 + 50, 100, 100);
      }
      
      if(board[i][j] == 2){
        line(300+i*100, j*100,i*100+400, j*100 + 100); 
        line(400+i*100, j*100,i*100+300, j*100 + 100);
      }
    }
  }
  }
  checkWinner();
  checkForTie();
  
  if(player1Wins){
    winner = "O's ";
  }else if(player2Wins){
    winner = "X's ";  
  }else if(tie){
    gameOver = true;
    text("It's a tie!", width*0.4, height*0.5);
  }
  
  if(player1Wins || player2Wins){
    gameOver = true;
    text(winner + "Wins!!!", width*0.4, height*0.5);
  }
  
  fill(0);
  if(player1){
    text("O's turn", 20, 100);
  }else{
    text("X's turn", 20, 100);
  }
}

void checkForTie(){
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){  
      if(board[i][j] == 0 || (player1Wins == true || player2Wins == true)){
        tie = false;
      }else{
        tie = true;
      }
    }
  }
}

void checkWinner(){
  if(board[0][0] == 1 && board[1][1] == 1 && board[2][2] == 1){
    player1Wins = true;
  }else if(board[0][0] == 2 && board[1][1] == 2 && board[2][2] == 2){
    player2Wins = true;  
  }
  if(board[0][2] == 1 && board[1][1] == 1 && board[2][0] == 1){
    player1Wins = true; 
  }else if(board[0][2] == 2 && board[1][1] == 2 && board[2][0] == 2){
    player2Wins = true; 
  }
  
  for(int i = 0; i< size; i++){
    //check rows for a winner 
    if(board[0][i] == 1 && board[1][i] == 1 && board[2][i] == 1){
      player1Wins = true; 
    }else if(board[0][i] == 2 && board[1][i] == 2 && board[2][i] == 2){
      player2Wins = true; 
    }
    
    //check columns for a winner 
    if(board[i][0] == 1 && board[i][1] == 1 && board[i][2] == 1){
      player1Wins = true; 
    }else if(board[i][0] == 2 && board[i][1] == 2 && board[i][2] == 2){
      player2Wins = true; 
    }
  }
}

void mousePressed(){
  for(int i = 0; i<size; i++){
    for(int j = 0; j<size; j++){  
      if(clicked[i][j] == false){
      if(mouseX>=300+i*100 && mouseX<=(300 + (i+1)*100) && mouseY>=j*100 && mouseY<=(j+1)*100){
          clicked[i][j] = true;
          board[i][j] = 1;
          if(player1){
            board[i][j] = 1;
          }else{
            board[i][j] = 2;
          }
          player1 = !player1;
        }
      }
    }
  }
}