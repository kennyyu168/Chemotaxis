
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
 	size(500,500);   
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
 		myX=250;
 		myY=250;
 		myColor=225;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}
 	void show()
 	{
 		fill(0,myColor,0);
 		ellipse(myX,myY,20,20);
 	}  
 	void avoid()
 	{
 		myX=mouseX+1;
 		myY=mouseY+1;
 	}
 }    