int count = 0;
void setup()
{
	size(700, 700);
	//noLoop();
}

void draw()
{
	int sum = 0;
	background(0);
	for (int a = 0; a < 600; a = a + 100)
	{
	for (int b = 0; b < 500; b = b + 100)
	{
		Die bob = new Die(a, b);
		bob.show();
		sum = sum + bob.numDie;
	}	
	}
		textSize(35);
		fill(255);
		text("total: " + sum, 50, 567);
		text("# times rolled: " + count, 250, 567);
		//text("grand total: " + (count*sum), 100, 100);
}

void mousePressed()
{
	redraw();
	noLoop();
	count = count + 1;
}

class Die //models one single dice cube
{
	int myX, myY, numDie;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numDie = (int)(Math.random()*6 + 1);
	}

	void show()
	{
		fill((int)(Math.random()), (int)(Math.random()*256), (int)(Math.random()*256));
		//fill(204, 204, 255);
		strokeWeight(3);
		stroke(255);
		rect(myX, myY, 100, 100,15);
		
		if (numDie == 1)
		{
			fill(255);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
		else if (numDie == 2)
		{
			fill(255);
			ellipse(myX + 35, myY + 50, 10, 10);
			ellipse(myX + 65, myY + 50, 10, 10);
		}
		else if (numDie == 3)
		{
			fill(255);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
		}
		else if (numDie == 4)
		{
			fill(255);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 70, myY + 30, 10, 10);
			ellipse(myX + 30, myY + 70, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
		}
		else if (numDie == 5)
		{
			fill(255);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 70, myY + 30, 10, 10);
			ellipse(myX + 30, myY + 70, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
		else if (numDie == 6)
		{
			fill(255);
			ellipse(myX + 28, myY + 30, 10, 10);
			ellipse(myX + 72, myY + 30, 10, 10);
			ellipse(myX + 28, myY + 70, 10, 10);
			ellipse(myX + 72, myY + 70, 10, 10);
			ellipse(myX + 28, myY + 50, 10, 10);
			ellipse(myX + 72, myY + 50, 10, 10);
		}
	}
}

