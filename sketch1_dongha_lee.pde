void setup() { 
  size(500, 500);
  background(70);
}
void draw() {
  //pillar
  noStroke();
  fill(1);
  rect(370,0,100,480);
  rect(200,0,100,450);
  rect(25,0,100,430);
  //lights
  fill(255);
  quad(400,25,430,40,430,60,400,75);
  fill(255,165,0);
  ellipseMode(CENTER);
  ellipse(400,50,40,50);
  
  fill(255);
  quad(230,25,260,40,260,60,230,75);
  fill(255,165,0);
  ellipse(230,50,40,50);
  
  fill(255);
  quad(55,25,85,40,85,60,55,75);
  fill(255,165,0);
  ellipse(55,50,40,50);
  
  //legs
  fill(111,115,103);
  rect(300,400,40,80);
  rect(340,450,10,30);
  rect(150,400,50,90);
  rect(200,460,20,30);
  //body
  noStroke();
  fill(200);
  quad(0,190,200,150,220,180,0,190);
  quad(0,190,220,180,300,190,0,190);
  quad(0,190,300,190,300,410,0,400);
  noStroke();
  fill(220);
  line(0,190,200,150);
  line(0,400,300,410);
  //face
  quad(200,150,370,150,390,180,220,180);//clockwise
  fill(230);
  quad(220,180,390,180,450,190,300,190);
  fill(210);
  quad(300,190,450,190,450,400,300,410);
  //face-components
  //eyebrows
  stroke(1);
  strokeWeight(4);
  line(320,210,360,220);
  line(395,220,430,210);
  //eyes
  ellipseMode(CENTER);
  fill(255);
  noStroke();
  ellipse(345,250,20,30);
  ellipse(415,245,19,29);
  
  fill(int(random(0,255)),int(random(0,255)),int(random(0,255)));
  ellipse(345,250,10,10);
  fill(int(random(0,255)),int(random(0,255)),int(random(0,255)));
  ellipse(415,246,9,9);
  //mouth
  fill(0);
  quad(330,350,430,346,430,394,330,400);
  //teeth
  fill(255);
  quad(350,349,410,346,410,353,350,356);
  quad(350.5,389,410,387,410,397,350.5,399);

}
