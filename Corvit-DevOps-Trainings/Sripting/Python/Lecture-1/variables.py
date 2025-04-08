x = 5
y = "John"
print(x)
print(y)

print("Hello, World!")

print('\n')

d = 4       # x is of type int
d = "Sally" # x is now of type str
print(d)

print('\n')
# Casting
i = str(3)    # i will be '3'
j = int(3)    # j will be 3
k = float(3)  # k will be 3.0 

print('\n')
# You can get the data type of a variable with the type() function.

b = 5
c = "John"
print(type(b))
print(type(c)) 

print('\n')
# String variables can be declared either by using single or double quotes:

e = "John"
# is the same as
e = 'John'

print('\n')
# Case-Sensitive
a = 4
A = "Sally" #A will not overwrite a 
print(a)
print(A)


print('\n')
# Assigning Multiple Values 
ab, bc, ac = "Orange", "Banana", "Cherry"
print(ab)
print(bc)
print(ac)

print('\n')
# And you can assign the same value to multiple variables in one line:
m = n = o = "Orange"
print(m)
print(n)
print(o)

print('\n')
# If you have a collection of values in a list, tuple etc. Python allows you to extract the values into variables. This is called unpacking.

fruits = ["apple", "banana", "cherry"]
f, g, h = fruits
print(f)
print(g)
print(h)

print('\n')
# Global Variables 

# Create a variable outside of a function, and use it inside the function
z = "awesome"

def myfunc():
 print("Python is " + z) 
myfunc()

print('\n')
# Create a variable inside a function, with the same name as the global variable

v = "awesome"

def myfunc():
  v = "fantastic"
  print("Python is " + v)

myfunc()

print("Python is " + v) 

print('\n')
# If you use the global keyword, the variable belongs to the global scope:

def myfunc():
  global p
  p = "fantastic"

myfunc()

print("Python is " + p)

