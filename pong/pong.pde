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


  size(1000, 700); 

  fill(0);

  x=730;

  xspeed = 5;
  yspeed = -3;
  y=300;

  W=30;
  ballx =200;
  bally = 200;
  S=300;
  score1 = 0;
  score2 = 0;
}

void draw() {
  
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
    bally = 450;
    ballx = 500;
  }
  if (ballx > 990) {
    score1 +=1;
    start = false;
    
    ballx=width/2;
    bally=height/2;
  }



  fill(250);

  background(0);

  rect(470, -500, 10, 4000);

  ellipse(ballx, bally, 20, 20);

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

  if (keyCode == UP) {
    y = y-45;
  }
  if (keyCode == DOWN) {
    y = y+45;
  }
  if (key == 'w' || key == 'W') {
    S = S-45;
  }
  if (key == 's' || key == 'S') {
    S = S+45;
  }
if(key == ' '){
  start = true;
  
  
}

}