int toggle = 0;
int index;
PFont fontFace;

String[] greetings = {
  // Message for greeting screen. Selected randomly.
  "안녕하신가.", 
  "시간은 금이라네 친구.", 
  "부두교에 너무 심취하지 말게.", 
  "이때쯤 대략 정신이 멍해진다."
};

void setup() {
  // Define display related information
  size(960, 600);
  noStroke();
  background(99);
  frameRate(30);
  fontFace = createFont("./NanumGothicBold.ttf", 40);
  textFont(fontFace);
  textSize(30);
  textAlign(CENTER, CENTER);
}

void draw() {
  // Main loop
  if (!isPeoplePresents()) {
    idleScreen();
    toggle = 1; // Save screen status
  } else {
    if (toggle == 1) {
      index = (int)random(greetings.length);
      println("dice:" + index);
      toggle = 0;
    }; 
    greetingScreen(index);
  }
}

boolean isPeoplePresents() {
  //Sensor Trigger 처리를 여기에 반영
  if (mousePressed) {
    return true;
  } else {
    return false;
  }
}

void idleScreen() {
  // Screen function for idle.
  int i;
  int j;
  for (j=0; j<=10; j++) {
    for (i=0; i<=10; i++) {
      if (((i+j)%2) == 0) {
        fill(60);
      } else {
        fill(255);
      }
      rect(i*96, j*60, 96, 60);
      fill(#1FE7DB);
      char c= (char) int(random(0xAC00, 0xD7A3));
      text(c, i*96+48, j*60+30);
    }
  }
}

void greetingScreen(int responseNumber) {
  // Screen function for display welcome messages.
  background(99);
  fill(255);
  textSize(40);
  text(greetings[responseNumber], 480, 300);
}