arr [] specs;
void setup()
{
	noStroke();
	specs = new arr[100];
}
void draw()
{
	background(0);
	size(500,500);
}
class specs
{
	double myX, myY, myAngle, mySpeed;
	int myColor;

	specs()
	{
		myX = (Math.random()*500);
		myY = (Math.random()*500);
		myColor = (255);
		myAngle = (Math.random()*2);
		mySpeed = (Math.random()*10);
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


