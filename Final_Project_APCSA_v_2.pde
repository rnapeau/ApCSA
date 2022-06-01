Table table;

//coordinates for food buttons
int burgerX;
int burgerY;

int pizzaX;
int pizzaY;

int chickenX;
int chickenY;

int snackX;
int snackY;

int sandwhichX;
int sandwhichY;

int buttonRadius;

ArrayList<Food>Snack= new ArrayList<Food>();
ArrayList<Food>Pizza= new ArrayList<Food>();
ArrayList<Food>Chicken= new ArrayList<Food>();
ArrayList<Food>Sandwhich= new ArrayList<Food>();
ArrayList<Food>Burger= new ArrayList<Food>();

int mode = 0;

void setup() {
  //Creating buttons and giving the list of food places
  size(500,500);
  //coordinates for food buttons
   burgerX=width*3/4;
   burgerY=200;
  
   pizzaX=width/2;
   pizzaY=80;
  
  chickenX=width/2;
  chickenY=200;
  
   snackX=width/4;
   snackY=200;
  
   sandwhichX=width/2;
   sandwhichY=315;
  
   buttonRadius=100;
  
  table = loadTable(" https://raw.githubusercontent.com/rnapeau/ApCSA/main/top_50_fast_food_US.csv", "header");
  int count=0;
  //Looks through table and split data into categories
   for (TableRow row : table.rows()) {
    String company = row.getString("company");
    String category = row.getString("category");
    System.out.println(company + " "+category);
      Food myFood= new Food(company,category);
      if(category.equals("burger")&& count<10){
        Burger.add(myFood);
      }
     if(category.equals("pizza")){
        Pizza.add(myFood);
      }
      if(category.equals("snack")){
        Snack.add(myFood);
      }
      if(category.equals("sandwich")){
        Sandwhich.add(myFood);
      }
       if(category.equals("chicken")){
        Chicken.add(myFood);
      }
    
    count++;
   }//end for loop
   
}//end setup

public void draw(){
  background(255);
   textSize(12);
//drawing the circles for the buttons
   if(mode==0){
    fill(0,200,125);
    textAlign(CENTER); 
    circle(burgerX, burgerY,buttonRadius);
    fill(0);
    text("Burger",burgerX,200);
    
    fill(0,200,125);
    circle(snackX,snackY,buttonRadius);
    fill(0);
    text("Snack",snackX,200);
    
    fill(150,255,225);
    circle(chickenX,chickenY,buttonRadius);
    fill(0);
    text("Chicken",chickenX,200);
    
    fill(150,155,225);
    circle(pizzaX,pizzaY,buttonRadius);
    fill(0);    
    text("Pizza",pizzaX,80);
    
    fill(150,155,225);
    circle(sandwhichX,sandwhichY,buttonRadius);
    fill(0); 
    text("Sandwhich",sandwhichX,315);
    
    textAlign(CENTER); 
    text("Click the buttons to find nearby restaurants!",width/2,height-50);
   }
    if(mode==1){
       showBurger();
    }
    
    if(mode==2){
       showChicken();
    }
    
    if(mode==3){
       showPizza();
    }
    
    if(mode==4){
       showSnack();
    }
    
    if(mode==5){
       showSandwhich();
    }
    
    circle(50,height-50,25);
       
}//end draw

  void showBurger(){
    mode=1;
    fill(255);
    rect(0,0,width,height);
    fill(0);
    for (int i = 0; i < Burger.size(); i++){
    text(Burger.get(i).getCompany(), width/2,i*50+50);
    }
     //show burger companies
  }
 void showSandwhich(){
    mode=5;
    fill(255);
    rect(0,0,width,height);
    fill(0);
    for (int i = 0; i < Sandwhich.size(); i++){
    text(Sandwhich.get(i).getCompany(), width/2,i*50+50);
    }
     //show Sandwhich companies
  }
  void showSnack(){
    mode=4;
    fill(255);
    rect(0,0,width,height);
    fill(0);
    for (int i = 0; i < Snack.size(); i++){
    text(Snack.get(i).getCompany(), width/2,i*50+50);
    }
    //show Snack companies
  }
    
 void showPizza(){
    mode=3;
    fill(255);
    rect(0,0,width,height);
    fill(0);
    for (int i = 0; i < Pizza.size(); i++){
    text(Pizza.get(i).getCompany(),width/2,i*50+50);
    }
    //show pizza companies
 }
    
  void showChicken(){
    mode=2;
    fill(255);
    rect(0,0,width,height);
    fill(0);
    for (int i = 0; i < Chicken.size(); i++){
    text(Chicken.get(i).getCompany(),width/2,i*50+50);
    }
     //show chicken companies
  }
  
   void mousePressed(){
     // Name of companies appear on canvas
    fill(0);
    if(dist(burgerX,burgerY,mouseX,mouseY)<buttonRadius){
      System.out.println("burger");
      mode=1;
    }
    else if(dist(chickenX,chickenY,mouseX,mouseY)<buttonRadius){
      System.out.println("Chicken");
      mode=2;
    }
    else if(dist(pizzaX,pizzaY,mouseX,mouseY)<buttonRadius){
      System.out.println("Pizza");
      mode=3;
    }
    else if(dist(snackX,snackY,mouseX,mouseY)<buttonRadius){
     System.out.println("Snack");
     mode=4;

    }
    else if(dist(sandwhichX,sandwhichY,mouseX,mouseY)<buttonRadius){
      System.out.println("Sandwhich");
      mode=5;
     
    }
    else if(dist(snackX,height-50,mouseX,mouseY)<buttonRadius){
      mode=0;
    }
 }// end mousePressed
