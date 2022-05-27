Table table;
//ArrayList<Food>Fastfood= new ArrayList<Food>();
void setup() {
  size(400,400);
  
  table = loadTable(" https://raw.githubusercontent.com/rnapeau/ApCSA/main/top_50_fast_food_US.csv", "header");

   for (TableRow row : table.rows()) {
    String company = row.getString("company");
    String category = row.getString("category");
    println(company + " "+category);
    
    
   }//end for loop
}//end setup

public void draw(){
   textSize(25);
    fill(0,200,125);
    circle(345,190,110);
    fill(0);
    text("Burger",300,200);
    
    fill(0,200,125);
    circle(60,190,110);
    fill(0);
    text("Snack",20,200);
    
    fill(150,255,225);
    circle(200,190,120);
    fill(0);
    text("Chicken",150,200);
    
    fill(150,155,225);
    circle(199,70,100);
    fill(0);    
    text("Pizza",170,80);
    
    fill(150,155,225);
    circle(205,320,130);
    fill(0); 
    text("Sandwich",150,315);
       
}//end draw

  void mousePressed(){
    //if(dist(mouseY,mouseX,345,190)<200));
   // if(dist(mouseX,mouseY,pizzaX,pizzaY)
   // if(dist(mouseX,mouseY,sandwichX,sandwichY)
    //if(dist(mouseX,mouseY,snackX,snackY)
    //if(dist(mouseX,mouseY,chickenX,chickenY)
 // }

public class Food{
   private String company;
   private String category;
    
    public Food(String company, String category){
      this.company= company;
      this.category= category;
      
     }//end food constructor
  }//end food class
  
 //public void update(){
 
// }
//find company by food and print out restraunt (first 10 only)
