# While Loop
i = 1
while i < 6:
  print(i)
  i += 1

print('\n') 
# Break Statement - With the break statement we can stop the loop even if the while condition is true:
j = 1
while j < 6:
  print(j)
  if j == 3:   # Exit the loop when j is 3
    break
  j += 1 

print('\n')
# Continue Statement - With the continue statement we can stop the current iteration, and continue with the next
k = 0
while k < 6:
  k += 1
  if k == 3:    # Continue to the next iteration if i is 3
    continue
  print(k)

print('\n')
  # Else Statement - With the else statement we can run a block of code once when the condition no longer is true
l = 1
while l < 6:
  print(l)
  l += 1
else:           # Print a message once the condition is false
  print("l is no longer less than 6")
