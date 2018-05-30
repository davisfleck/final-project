//The Restaurant Assignment
//Davis Fleck
//Nordic Waffle Hut

double subtotal;
double tip;

void setup(){

  noLoop();
  
}

void draw() {

  println("Welcome to the Nordic Waffle Hut");
  println("The most Heroic Nordic Waffle Hut");
  
  //Subtotal is the amount before tax and/or tip.
  double subtotal = 75.00;
  
    println("The subtotal is: $" + subtotal);

  //Now we call the addTax function, which will find the total with tax.
  double total; //This is the total after tax.
  total = addTax(subtotal);

println("The total after tax is: $" + total);


  //Now we call the addTip function, which will print the total with a $5 tip added. 
  addTip(addTax(subtotal), tip);
  
  //Now we call the splitTotal function, which will tell us what each person owes if we split the bill 4 ways.
  splitTotal(addTax(subtotal)+tip, 4);

  //I enjoyed my meal, so I want to leave a positive review.
  yelpReview(true);
  yelpReview(false);
  
}
//the functions for the restaurant
double addTax(double subtotal){  
  double total;
 subtotal*=1.05;
 total= subtotal + 0.05;
  return subtotal;
}

void addTip(double total, double tip){
  tip = 5;
  double grandtotal =total + tip;

}

void splitTotal(double total , int PEOPLE){
  double perPerson;
  perPerson = total / PEOPLE;
  println("when you split the bill between " + PEOPLE + " people, each person pays $" + perPerson);
  
}

void yelpReview(boolean POSITIVE){
  if(POSITIVE){
  println("The food was amazing.");
  
  }
  else{
    println("But the service was terrible.");
    
  }
}