// Dino game

Unicorn unicorn;
PImage uImg;
PImage tImg;
PImage bImg;
ArrayList<Train> trains = new ArrayList<Train>();


void mousePressed() {
  trains.add(new Train());
}

void setup() {
  size(800, 450);
  uImg = loadImage("unicorn.png");
  tImg = loadImage("train.png");
  bImg = loadImage("background.jpg");
  unicorn = new Unicorn();
}

void keyPressed() {
  if (key == ' ') {
    unicorn.jump();
  }
}

void draw() {

  if (random(1) < 0.005) {
    trains.add(new Train());
  }

  background(bImg);
  for (Train t : trains) {
    t.move();
    t.show();
    if (unicorn.hits(t)) {
      print("game over");
      noLoop();
    }
  }

  unicorn.show();
  unicorn.move();
}