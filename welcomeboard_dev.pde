int i;
int j;
char c;
PFont fontFace;

void setup() {
  size(960, 600);
  noStroke();
  background(127);
  
  fontFace = createFont("./NanumGothicBold.ttf",30);
  textFont(fontFace);
  textSize(30);
  textAlign(CENTER, CENTER);

}

void draw() {
  setMatrix();
   
}

boolean isPeoplePresents() {

  //Sensor Trigger 처리를 여기에 반영
  if(mousePressed) {
    return true;
  } else {
    return false;
  }
}

void setMatrix() {
    for(j=0;j<=10;j++){
    for(i=0;i<=10; i++){
      if(((i+j)%2) == 0){
        fill(60);
      } else{
        fill(255);
      }
      rect(i*96,j*60,96,60);
      fill(#1FE7DB);
      c= (char) int(random(0xAC00,0xD7A3));
      text(c,i*96+48,j*60+30);
    }
  }
}