
 //declare bacteria variables here  

 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here
 	colony = new Bacteria[100];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	size(640,480);   
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 		colony[i].avoid();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX=320;
 		myY=240;
 		myColor=225;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		fill(0,myColor,0);
 		ellipse(myX,myY,10,10);
 	}  
 	void avoid()
 	{

	 		if(myX>mouseX)
	 		{
	 			myX=myX+(int)(Math.random()*5);
	 		}
	 		if(myX<mouseX)
	 		{
	 			myX=myX-(int)(Math.random()*5);
	 		}
	 		if(myY>mouseY)
	 		{
	 			myY=myY+(int)(Math.random()*5);
	 		}
	 		if(myY<mouseY)
	 		{
	 			myY=myY-(int)(Math.random()*5);
	 		}
		
 	}
 }    