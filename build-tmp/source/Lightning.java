import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = mouseX;
int startY = 0;
int endX = 150;
int endY = 0;
//int fade = 800;
int fade = (int)(Math.random()*255);

public void setup()
{
	
	background(15, 41, 102);
	strokeWeight(1);
	frameRate(200);
}

public void draw()
{ 
	lightning();
		
}

public void lightning()
{
	//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	//fade = (int)(Math.random()*800);
	stroke(223, 216, 11, fade);
	if(endY < 500)
	{
		endX = startX + (int)(Math.random() * 18)-9;
		endY = startY + (int)(Math.random() * 9) ;
		line(startX, startY, endX, endY);

		startX = endX;
		startY = endY;

	}
}

public void mousePressed()
{
	
	 startX = mouseX;
     startY = 0;
     endX = 150;
     endY = 0;
     fade =  (int)(Math.random()*255);

}


/*
draw a line() with endpoints startX,startY,endX,endY
set startX to equal endX and startY to equal endY
void mousePressed() needs to set startX,startY,endX,endY back to their original values.
You will need to modify index.html to customize your website with it's own title, header and footer. When you are happy with your program, push your finished project up to GitHub
The final step is to submit the URL for your website via the "drop box" for the assignment on School Loop. Don't hesitate to ask for help if your aren't sure how something is suppose to work.
*/
  public void settings() { 	size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
