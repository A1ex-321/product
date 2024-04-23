 public function demo()
    {
        $array = [10, 20, 30, 40];
        $a = [];

        for ($j = 0; $j < count($array); $j++) {
            for ($k = $j; $k < count($array); $k++) {
                if ($array[$j] < $array[$k]) {
                    $a = $array[$j];
                    $array[$j] = $array[$k];
                    $array[$k] = $a;
                }
            }
        }

        // Remove duplicates and re-index the array


        dd($array[1]); // Dump and die to display the result
    }
    public function demo1()
    {
        for ($i = 0; $i <= 5; $i++) {
            for ($j = 0; $j <= $i; $j++) {
                if ($j <= $i) {
                    echo "*";
                } 
            }
            echo "<br/>";
        }
        for ($i = 0; $i <= 5; $i++) {
            for ($j = 5-$i; $j >= 0; $j--) {
                    echo "*";
                
            }
            echo "<br/>";
        }

    }
// *
// **
// ***
// ****
// *****
// ******
// ******
// *****
// ****
// ***
// **
// *
    public function demo2()
    {
        $a = 5; // Change the value of $a to adjust the size of the pattern
    
        for ($i = 1; $i <= $a; $i++) {
            // Add spaces before printing asterisks
            for ($k = 1; $k <= $a - $i; $k++) {
                echo "&nbsp;"; // HTML non-breaking space for better alignment
            }
            // Print asterisks
            for ($j = 1; $j <= $i; $j++) {
                echo "* ";
            }
            // Add a new line after each row
            echo "<br/>";
        }
    }
 //    *
//    * *
//   * * *
//  * * * *
// * * * * *
public function demo3()
{
    $a = 5; // Change the value of $a to adjust the size of the pattern

    for ($i = 1; $i <= $a; $i++) {
        // Add spaces before printing asterisks
        for ($k = 1; $k <= $i; $k++) {
            echo $k; // HTML non-breaking space for better alignment
        }
        // Print asterisks
        echo "<br/>";
    }
}
// 1
// 12
// 123
// 1234
// 12345
public function demo4()
{
    $a = 5; // Change the value of $a to adjust the size of the pattern
$d=1;
    for ($i = 1; $i <= $a; $i++) {
        // Add spaces before printing asterisks
        for ($k = 1; $k <= $i; $k++) {
            echo $d." ";

             $d=$d+1; // HTML non-breaking space for better alignment
        }
        // Print asterisks
        echo "<br/>";
    }
}
// 1
// 2 3
// 4 5 6
// 7 8 9 10
// 11 12 13 14 15
public function demo5()
{
    for($i=0;$i<=5;$i++)
    {
        for($j=5-$i;$j>=0;$j--){
        echo "*";
        }
    echo "<br>";
    }
}
// ******
// *****
// ****
// ***
// **
// *
public function demo6()
{
    for($i=0;$i<=5;$i++)
    {
        for($j=5-$i;$j>=0;$j--){
        echo "&nbsp;";
        }
        for($j=0;$j<=$i;$j++){
            echo "* ";
            }
    echo "<br>";
    }
}
// *
// * *
// * * *
// * * * *
// * * * * *
// * * * * * *
// swap two number

public function demo7()
{
  $x=10;
  $y=20;
  $z=$x+$y;
  $x=$z-$x;
  $y=$z-$x;
  echo $x;
  echo $y;
    
}
//reverse
public function demo8()
{
    $x = 123;
    $reverse = 0;

    while ($x > 0) {
        $digit = $x % 10; // Get the last digit
        $reverse = $reverse * 10 + $digit; // Build the reversed number
        $x = $x / 10; // Move to the next digit
    }

    echo $reverse;
}
//output is 321
//fibonaci
public function demo9()
{
    $num1 = 0; 
    $num2 = 1; 
  
    $counter = 0; 
    while ($counter < 10){ 
        echo ' '.$num1; 
        $num3 = $num2 + $num1; 
        $num1 = $num2; 
        $num2 = $num3; 
        $counter = $counter + 1; 
    } 
    }
