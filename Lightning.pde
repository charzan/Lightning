int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
	size(300,300);
	background(0, 0, 255);
	strokeWeight(10);
}
void draw()
{ 
	stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	while(endX <= 300){
		endX = startX + ((int)(Math.random() * 9));
		endY = startY + ((int)(Math.random() * 18 )) - 9;
		line(startX, startY, endX, endY);
	}
}
void mousePressed()
{

}


/*
draw a line() with endpoints startX,startY,endX,endY
set startX to equal endX and startY to equal endY
void mousePressed() needs to set startX,startY,endX,endY back to their original values.
You will need to modify index.html to customize your website with it's own title, header and footer. When you are happy with your program, push your finished project up to GitHub
The final step is to submit the URL for your website via the "drop box" for the assignment on School Loop. Don't hesitate to ask for help if your aren't sure how something is suppose to work.
*/
