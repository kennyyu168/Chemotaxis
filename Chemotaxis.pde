
 //declare bacteria variables here  

 Bacteria [] colony;
 Bacteria [] colony2;
 void setup()   
 {     
 	//initialize bacteria variables here
 	frameRate(1);

 	colony = new Bacteria[10000];
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
 		//colony[i].move();
 		colony[i].show();
 		colony[i].avoid();
 	}
 }  
 void mousePressed()
 {
 	colony = new Bacteria[10000];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	size(640,480); 
 	redraw();
 }
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX=320;
 		myY=240;
 		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		stroke(225);
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}  
 	void avoid()
 	{
 		//while(myX>0&&myX<640&&myY>0&&myY<480)
 		//{
	 		if(myX>mouseX)
	 		{
	 			myX=myX+(int)(Math.random()*5)-1;
	 		}
	 		if(myX<mouseX)
	 		{
	 			myX=myX+(int)(Math.random()*5)-3;
	 		}
	 		if(myY>mouseY)
	 		{
	 			myY=myY+(int)(Math.random()*5)-1;
	 		}
	 		if(myY<mouseY)
	 		{
	 			myY=myY+(int)(Math.random()*5)-3;
	 		}
		//}
 	}
 }    