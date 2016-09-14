 //declare bacteria variables here  
 Bacteria uno = new Bacteria(); 
 void setup()   
 {     
 	//initialize bacteria variables here
 	size(500,500);   
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0);
 	uno.move();
 	uno.show();
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
 }    