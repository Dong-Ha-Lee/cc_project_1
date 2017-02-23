int count; //<>//
float rand_r, rand_g, rand_b;

void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  //println(mouseX+" "+mouseY);
  //make navigation buttons
  fill(0);
  triangle(width/2, 10, width/2-30, 30, width/2+30, 30);
  triangle(10, height/2, 30, height/2-30, 30, height/2+30);
  triangle(790, height/2, 770, height/2-30, 770, height/2+30);
  triangle(width/2, 790, width/2-30, 770, width/2+30, 770);
  //initial pattern
  if(mousePressed){
  noFill();
  int cnt=0;
  for (int i=650; i>=50; i-=30) {
    if (cnt%2==0) {
      fill(random(255), random(255), random(255));
    }
    arc(width/2, height/2, i, i, PI/random(10), PI/random(20));
  }
  }
  //up
  if (mouseX>width/2-30&&mouseX<width/2+30&&mouseY<30) {
    rect(35, 35, 730, 730);
    pushMatrix();
    for (int x=50; x<=700; x+=50) { //spacing a block (x)
      for (int y=50; y<=700; y+=50) {  //spacing a block(y)
        pushMatrix();
        translate(x, y);
        for (int y_pattern=0; y_pattern<=40; y_pattern+=10) { // y vertex of a block
          for (int x_pattern=0; x_pattern<=40; x_pattern++) { //vertex x of a block
            line(x_pattern, y_pattern, x_pattern+1, y_pattern);
            if (count%2==0) {
              rand_r=random(255);
              rand_g=random(255);
              rand_b=random(255);
              stroke(rand_r, rand_g, rand_b);
              line(x_pattern+1, y_pattern, x_pattern+1, y_pattern+10);
            }
            count++;
          }
        }
        popMatrix();
      }
    }
    popMatrix();
  }

  //down
  else if (mouseX>width/2-30&&mouseX<width/2+30&&mouseY>770) {
    rect(35, 35, 730, 730);
    for (int x=50; x<=700; x+=50) {
      int count=4;
      for (int y=50; y<=700; y+=50) {
        pushMatrix();
        translate(x, y);
        stroke(x, y, x);
        rotate(PI/count);
        beginShape();
        vertex(0, 0);
        vertex(50, 0);
        vertex(50, 50);
        vertex(40, 50);
        vertex(40, 10);
        vertex(0, 10);
        endShape();
        popMatrix();
        count++;
      }
    }
  }

  //left

  else if (mouseX<30&&mouseY<height/2+30&&mouseY>height/2-30) {
    rect(35, 35, 730, 730);
    int count=1;
    for (int y=70; y<=700; y+=50) {
      for (int x=70; x<=700; x+=50) {
        stroke(random(255));
        pushMatrix();
        translate(x+50, 0);
        rotate(PI/2/count);
        line(x, y, x+20, y);
        line(x, y+10, x+20, y+10);
        line(x, y, x+20, y);
        count++;
        if (count>4) count=1;
        popMatrix();
      }
    }
  } 
  //right
  else if (mouseX>770&&mouseY<height/2+30&&mouseY>height/2-30) {
    fill(255);
    noStroke();
    rect(35, 35, 730, 730);
    stroke(0);
    strokeWeight(3);
    line(200, 300, 200, 500);
    line(600, 300, 600, 500);
    line(width/2, 250, width/2, 600);
    for (int i=0; i<=50; i++) {
      strokeWeight(1);
      if (i%2==0) {
        line(50, height/2, random(250, 700), random(50, 750));
      } else {
        line(750, height/2, random(100, 550), random(50, 750));
      }
    }
  }
  else if(mouseX<width/2+50&&mouseX>width/2-50&&mouseY>height/2-50&&mouseY<height/2+50){
    for(int i=1;i<=360;i++){
    pushMatrix();
    rotate(radians(i));
    line(400,400,400,random(200));
    popMatrix();
    }
  }
}

void mousePressed() {
  fill(255);
  rect(0, 0, 800, 800);
  fill(0);
  triangle(width/2, 10, width/2-30, 30, width/2+30, 30);
  triangle(10, height/2, 30, height/2-30, 30, height/2+30);
  triangle(790, height/2, 770, height/2-30, 770, height/2+30);
  triangle(width/2, 790, width/2-30, 770, width/2+30, 770);
}

//boolean centerClicked() {
//  if (mousePressed&&mouseX>50&&mouseX<700&&mouseY>50&&mouseY<700) {
//    return true;
//  } else {
//    return false;
//  }
//}