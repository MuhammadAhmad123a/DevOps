# Arrays
cars = ["Ford", "Volvo", "BMW"] 

car0 = "Ford"
car1 = "Volvo"
car2 = "BMW"

print('\n')

# Access the Elements of an Array
x = cars[0] 
print(x)

print('\n')
# Modify the value of the first array item
cars[0] = "Toyota"
x = cars[0] 
print(x)

print('\n')
# Looping Array Elements
for x in cars:
  print(x)

print('\n')
# The Length of an Array 
x = len(cars)
print(x)

print('\n')
# Adding Array Elements
cars.append("Honda")
for x in cars:
  print(x)

print('\n')
# Removing Array Elements
cars.pop(1) 
for x in cars:
  print(x)

