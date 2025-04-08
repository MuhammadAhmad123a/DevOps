# Arrays

$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123

write-host("Print all the array elements")
$myList

Write-Host `n
write-host("Get the length of array")
$myList.Length

Write-Host `n
write-host("Get Second element of array")
$myList[1]

Write-Host `n
write-host("Get partial array")
$subList = $myList[1..3]

Write-Host `n
write-host("print subList")
$subList

Write-Host `n
write-host("using for loop")
for ($i = 0; $i -le ($myList.length - 1); $i += 1) {
  $myList[$i]
}

Write-Host `n
write-host("using forEach Loop")
foreach ($element in $myList) {
  $element
}

Write-Host `n
write-host("using while Loop")
$i = 0
while($i -lt 4) {
  $myList[$i];
  $i++
}

Write-Host `n
write-host("Assign values")
$myList[1] = 10
$myList


Write-Host `n
Write-Host `n
Write-Host `n

# Arrays Methods

$myList = @(0..4)

write-host("Print array")
$myList

Write-Host `n
$myList = @(0..4)

Write-Host `n
write-host("Assign values")
$myList[1]  = 10
$myList

