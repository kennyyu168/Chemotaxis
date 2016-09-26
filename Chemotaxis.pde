
 //declare bacteria variables here  

 Bacteria [] colony;
 Bacteria [] colony2;
 void setup()   
 {     
 	//initialize bacteria variables here
 	colony = new Bacteria[1000];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(200,240);
 	}
 	colony2 = new Bacteria[1000];
 	for(int j=0; j<colony.length; j++)
 	{
 		colony2[j] = new Bacteria(440,240);
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
 	for(int j=0; j<colony2.length; j++)
 	{
 		//colony2[j].move();
 		colony2[j].show();
 		colony2[j].avoid();
 	}
 }  
 void mousePressed()
 {
 	colony = new Bacteria[1000];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(200,240);
 	}
 	colony2 = new Bacteria[1000];
 	for(int j=0; j<colony.length; j++)
 	{
 		colony[j] = new Bacteria(440,240);
 	}
 	size(640,480); 
 	redraw();
 }
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria(int x, int y)
 	{
 		myX=x;
 		myY=y;
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