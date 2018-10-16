
import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
BeatDetect beat;
BeatListener bl;

float kickSize, snareSize, hatSize;

int espacio;
float r, g, b;

class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;
  
  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }
  
  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }
  
  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}

void setup()
{
  size(500, 500, P3D);
  minim = new Minim(this);
  song = minim.loadFile("marcus_kellis_theme.mp3", 1024);
  song.play();
  beat = new BeatDetect(song.bufferSize(), song.sampleRate());
  beat.setSensitivity(300);  
  kickSize = snareSize = hatSize = 16;
  bl = new BeatListener(beat, song);  
  textFont(createFont("Helvetica", 16));
  textAlign(CENTER);
  espacio = 50;
  
  r = 255;
  g = 255;
  b = 255;
}

void draw()
{
  background(0);

  float rectW = width / beat.detectSize();
  for(int i = 0; i < beat.detectSize(); ++i)
  {
    if ( beat.isOnset(i) )
    {
      fill(0,200,0);
      rect( i*rectW, 0, rectW, height);
    }
  }

  int lowBand = 5;
  int highBand = 15;

  int numberOfOnsetsThreshold = 4;
  if ( beat.isRange(lowBand, highBand, numberOfOnsetsThreshold) )
  {
    fill(232,179,2,200);
    rect(rectW*lowBand, 0, (highBand-lowBand)*rectW, height);
  }
  
  if ( beat.isKick() ) kickSize = 32;
  if ( beat.isSnare() ) snareSize = 32;
  if ( beat.isHat() ) hatSize = 32;
  
  fill(255);
    
  textSize(kickSize);
  text("KICK", width/4, height/2);
  
  textSize(snareSize);
  text("SNARE", width/2, height/2);
  
  textSize(hatSize);
  text("HAT", 3*width/4, height/2);
  
  kickSize = constrain(kickSize * 0.95, 16, width);
  snareSize = constrain(snareSize * 0.95, 16, width);
  hatSize = constrain(hatSize * 0.95, 16, width);
  
  
    background (0);

  //For loop biDimensional
  for (int i=0; i<50; i++) {
    for (int j=0; j<50; j++) {

      if (beat.isKick()) {
        rectMode(RADIUS);
        if (mousePressed) {
          noStroke();
          fill(mouseX/2, 30, 150, 100);
        } else { 
          fill(63, 47, 126);
          stroke(0);
        }
        rect(espacio * i, espacio * j, 20, 20);
        ellipse(espacio * i, espacio * j, 15, 15);
      }

      if (beat.isSnare()) {
        fill(0);
        rectMode(RADIUS);
        strokeWeight(4);
        stroke(165);
        rect(snareSize *i, mouseY * j, espacio, espacio);
        noStroke();
        fill(random(r), random(g), random(b), 200);
        ellipse(hatSize * i, mouseY * j, espacio*1.8, kickSize);
        fill(255);
        ellipse(mouseX * i, mouseY * j, espacio/1.5, espacio/1.5);
        fill(0);
        ellipse(mouseX * i, mouseY * j, espacio/5, espacio/5);
        
      }

      if (beat.isHat()) {
        noStroke();

        rectMode(RADIUS);

        fill(249, 142, 255);
        rect(mouseY *i, mouseX * j, 45, 45);
        fill(142, 252, 255);
        rect(mouseX * i, mouseX * j, 30, 30);
        fill(253, 255, 142);
        rect(mouseX * i, mouseY * j, 15, 15);
        fill(131, 245, 139);
        rect(mouseY * i, mouseY * j, 7.5, 7.5);
      }
    }
  }
}
