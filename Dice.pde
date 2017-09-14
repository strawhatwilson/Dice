int count = 0;
void setup()
{
	size(700, 700);
	noLoop();
}

void draw()
{
	int sum = 0;
	background(255);
	for (int a = 0; a < 700; a = a + 100)
	{
	for (int b = 0; b < 600; b = b + 100)
	{
		Die bob = new Die(a, b);
		bob.show();
		sum = sum + bob.numDie;
	}	
	}
		textSize(35);
		fill(0);
		text("grand total:" + sum, 0, 667);
		text("# of times rolled:" + count, 350, 667);
		
}

void mousePressed()
{
	redraw();
	noLoop();
	count = count + 1;
}

class Die //a single dice cube
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
		fill(0);
		strokeWeight(2);
		stroke(255);
		rect(myX, myY, 100, 100,15);
		
		if (numDie == 1)
		{
			fill(0);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
		else if (numDie == 2)
		{
			fill(0);
			ellipse(myX + 35, myY + 50, 10, 10);
			ellipse(myX + 65, myY + 50, 10, 10);
		}
		else if (numDie == 3)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
		}
		else if (numDie == 4)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 70, myY + 30, 10, 10);
			ellipse(myX + 30, myY + 70, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
		}
		else if (numDie == 5)
		{
			fill(0);
			ellipse(myX + 30, myY + 30, 10, 10);
			ellipse(myX + 70, myY + 30, 10, 10);
			ellipse(myX + 30, myY + 70, 10, 10);
			ellipse(myX + 70, myY + 70, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
		}
		else if (numDie == 6)
		{
			fill(0);
			ellipse(myX + 28, myY + 30, 10, 10);
			ellipse(myX + 72, myY + 30, 10, 10);
			ellipse(myX + 28, myY + 70, 10, 10);
			ellipse(myX + 72, myY + 70, 10, 10);
			ellipse(myX + 28, myY + 50, 10, 10);
			ellipse(myX + 72, myY + 50, 10, 10);
		}
	}
}

