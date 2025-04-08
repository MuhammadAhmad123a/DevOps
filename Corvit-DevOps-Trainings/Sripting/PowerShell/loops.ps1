# For Loop
$array = @("item1", "item2", "item3")
 
for($i = 0; $i -lt $array.length; $i++){ $array[$i] }

Write-Host `n
# For Each Loop ex1
$array = @("item1", "item2", "item3")
 
foreach ($element in $array) { $element }

Write-Host `n
# For Each Loop ex2
$array | foreach { $_ }

Write-Host `n
# while-lopp
$array = @("item1", "item2", "item3")
$counter = 0;

while($counter -lt $array.length){
   $array[$counter]
   $counter += 1
}

Write-Host `n
# Do-while Loop
$array = @("item1", "item2", "item3")
$counter = 0;

do {
   $array[$counter]
   $counter += 1
} while($counter -lt $array.length)


