//Colby Ash
//Game Assessment

boolean start;

int x, y;
int W, S;

int ballx, bally;
int xspeed, yspeed;

int score1;
int score2;


void setup() {

  textFont(createFont("Comic Sans MS", 20));
start = false;

//Size of the screen your playing on.

  size(1000, 700); 

//Color of background.

  fill(0);
  
//Speed and starting point for both the ball and paddles.
  x=730;

  xspeed = 6;
  yspeed = -4;
  y=300;

  W=30;
  ballx =500;
  bally = height/2;
  S=300;
  score1 = 0;
  score2 = 0;
}

void draw() {

  //Restrictions for width and height so the ball can bounce.

  if (bally < 0) {
    yspeed *= -1;
  } 
  if (ballx > (width-60) && bally > y && bally < (y+80)) {
    xspeed *= -1;
  }

  if (ballx < 60 && bally > S && bally< (S+80)) {
    xspeed *= -1;
  }

  if (bally > height) {
    yspeed *= -1;
  } 
  if (ballx < 1) {
    score2 +=1;
start = false;
   
    ballx=700;
    bally=height/2;
  }
  if (ballx > 990) {
    score1 +=1;
    start = false;
    
    ballx=300;
    bally=height/2;
  }

  fill(250);

  background(0);

  rect(500, -500, 10, 4000);

  ellipse(ballx, bally, 20, 20);

//Sets the score.

  textSize(44);
  text("Score: " +score1, 100, 100);
  text("Score: " +score2, 750, 100);

  rect(30, S, 20, 80);

  rect(940, y, 20, 80); 

if(start){
  ballx += xspeed;
  bally += yspeed;}
}


void keyPressed() {

  //Moves both Up and Down arrows as well as W and S on the keyboard.

  if (keyCode == UP) {
    y = y-65;
  }
  if (keyCode == DOWN) {
    y = y+65;
  }
  if (key == 'w' || key == 'W') {
    S = S-65;
  }
  if (key == 's' || key == 'S') {
    S = S+65;
}

//Once one of the paddles get a point it restarts it by pressing the spacebar.

if(key == ' '){
  start = true;
  
}
  

}