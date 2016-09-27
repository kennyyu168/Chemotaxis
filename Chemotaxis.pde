 Bacteria [] colony;
 Bacteria [] colony2;
 void setup()   
 {     
 	colony = new Bacteria[1000];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(240,240);
 	}
 	colony2 = new Bacteria[1000];
 	for(int j=0; j<colony.length; j++)
 	{
 		colony2[j] = new Bacteria(400,240);
 	}
 	size(640,480);   
 }   
 void draw()   
 {    
 	background(0);
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].avoid();
 	}
 	for(int j=0; j<colony2.length; j++)
 	{
 		colony2[j].show();
 		colony2[j].avoid();
 	}
 }  
 void mousePressed()
 {
 	colony = new Bacteria[1000];
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria(240,240);
 	}
 	colony2 = new Bacteria[1000];
 	for(int j=0; j<colony.length; j++)
 	{
 		colony[j] = new Bacteria(400,240);
 	}
 	size(640,480); 
 	redraw();
 }
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria(int x, int y)
 	{
 		myX=x;
 		myY=y;
 		myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void show()
 	{
 		stroke(225);
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}  
 	void avoid()
 	{

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
	
 	}
 }    