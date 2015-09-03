int startX = mouseX;
int startY = 0;
int endX = 150;
int endY = 0;
//int fade = 800;
int fade = (int)(Math.random()*255);

void setup()
{
	size(300,300);
	background(15, 41, 102);
	strokeWeight(1);
	frameRate(200);
}

void draw()
{ 
	lightning();	
}

void lightning()
{
	//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	//fade = (int)(Math.random()*800);
	stroke(223, 216, 11, fade);
	if(endY < 300)
	{
		endX = startX + (int)(Math.random() * 18)-9;
		endY = startY + (int)(Math.random() * 9) ;
		line(startX, startY, endX, endY);

		if (fade >= 0 && endY >= 300)
		{
			fade -= 50;

		}

		startX = endX;
		startY = endY;

	}
}
void mousePressed()
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
