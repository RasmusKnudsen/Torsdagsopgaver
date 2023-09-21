//5.1
void setup()
{
  MyClass myclass = new MyClass();
}

//5.2
void setup() //Stort S til lille s
{
   println("Jobs done!"); 
}

//5.3
boolean jobsDone = true; //skift fra false til true, så den printer

void setup()
{
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

boolean isJobDone() //fra void til boolean
{
    return jobsDone;    
}

//5.4
boolean jobsDone = true;

void setup()
{
    if (isJobDone()) //paranteser til isJobDone, så vi kalder den korrekt
    {
        println("Job's done!");   
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

//5.5
boolean jobsDone = true;

void setup()
{
    if (isJobDone())
    {
        println("Job's done!"); //manglende semikolon
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

//5.6

boolean jobsDone = true;

void setup()
{
    println(getRandomNumber(0, 10));
    if (isJobDone())
    {
        println("Job's done!");   
    }
}

int getRandomNumber(int min, int max) //Functions needs t obe defined before they're used. Moved this above the boolean
{
    return int(random(min, max));
}

boolean isJobDone() 
{
    return jobsDone;    
}

//5.7
boolean jobsDone = true;

void setup()
{
    int myArray[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    println(getSumOfElementsInArray(myArray));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

int getSumOfElementsInArray(int[] arr) 
{
  int sum = 0; //Need to declare and initialize sum outside of the loop
    for (int i = 0; i < arr.length; i++)
    {
         sum += arr[i];
    }
    return sum;
}

boolean isJobDone()
{
    return jobsDone;    
}

//5.8
boolean jobsDone = true;

void setup()
{
    println(isValueGreaterThanThreshold(10, 5));
    println(isValueGreaterThanThreshold(4, 8));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isValueGreaterThanThreshold(int value, int threshold) 
{
    if (value > threshold) 
    {
        return true;                
    }
    else
    {
    return false;} //Adding a return statement for false with "else"
}

boolean isJobDone()
{
    return jobsDone;    
}

//5.9
{
    int myArray[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1};
    print(getSumOfAllElementsInArray(myArray));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isJobDone()
{
    return jobsDone;    
}

int getSumOfAllElementsInArray(int[] arr) 
{
    int sum = 0; 
    for (int i = 0; i < arr.length; i++) //Removed = so the index is not out of bounds for the length
    {
        sum += arr[i];
    }
    return sum;
}

//5.10
boolean jobsDone = true;

void setup()
{
    size(1000,1000);
    drawGrid(15, 15, 40);
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

void draw() {

}

boolean isJobDone()
{
    return jobsDone;    
}


void drawGrid(int numberOfHorizontalCells, int numberOfVerticalCells, int cellSideLength)
{
    for (int x = 0; x < numberOfHorizontalCells; x++)
 {   
        for (int y = 0; y < numberOfVerticalCells; y++)
        {
         
            if (x % 2 == 0 && y % 2==0)
            {
             
                fill(0);
              
            
            }else if (y % 2==1 && x % 2 == 1 ){
              
                fill(255);
              
            }
            rect(x * cellSideLength, y * cellSideLength, cellSideLength, cellSideLength);  
            
        }
    }
}
