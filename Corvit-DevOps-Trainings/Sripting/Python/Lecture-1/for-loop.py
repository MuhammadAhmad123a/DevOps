# A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).

fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)

print('\n')

# Looping Through a String
for x in "banana":
  print(x)

print('\n')

# Break Statement - With the break statement we can stop the loop before it has looped through all the items
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)
  if x == "banana":
    break

print('\n')
# Continue Statement - With the continue statement we can stop the current iteration of the loop, and continue with the next
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":    # Do not print banana
    continue
  print(x)

print('\n')
# Range() Function - The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and ends at a specified number.
for x in range(6):
  print(x)     # means total 6 values, but the values 0 to 5 (6 not included)

print('\n') 
# The range() function defaults to 0 as a starting value, however it is possible to specify the starting value by adding a parameter: range(2, 6), which means values from 2 to 6 (but not including 6)
for x in range(2, 6):
  print(x)  

print('\n')
# Increment the sequence with 3 (default is 1)
for x in range(2, 30, 3):
  print(x)

print('\n')
 # Else in For Loop   
for x in range(6):
  print(x)
else:
  print("Finally finished!")   # Print all numbers from 0 to 5, and print a message when the loop has ended

print('\n')
# Nested Loops
adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]

for x in adj:
  for y in fruits:
    print(x, y)   