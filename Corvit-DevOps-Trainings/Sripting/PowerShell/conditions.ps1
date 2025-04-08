# If statement

$x = 10

if($x -le 20){
   write-host("This is if statement")
}

Write-Host `n
# If-Else 
$x = 30

if($x -le 20){
   write-host("This is if statement")
}else {
   write-host("This is else statement")
}

Write-Host `n
# Else-IF
$x = 30

if($x -eq 10){
   write-host("Value of X is 10")
} elseif($x -eq 20){
   write-host("Value of X is 20")
} elseif($x -eq 30){
   write-host("Value of X is 30")
} else {
   write-host("This is else statement")
}

Write-Host `n
# Switch
switch(3){
   1 {"One"}
   2 {"Two"}
   3 {"Three"; break }
   4 {"Four"}
   3 {"Three Again"}
}
