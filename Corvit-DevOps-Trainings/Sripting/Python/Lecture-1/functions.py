# Functions
# In Python a function is defined using the def keyword:

def my_function():
  print("Hello from a function") 

my_function()  # Calling a function


print("\n")

# Arguments - nformation can be passed into functions as arguments.
#Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma.

def my_function(fname):
  print(fname + " Refsnes")

my_function("Emil")
my_function("Tobias")
my_function("Linus")

print("\n")
# Number of Arguments - By default, a function must be called with the correct number of arguments. 
# Meaning that if your function expects 2 arguments, you have to call the function with 2 arguments, not more, and not less. 

def my_function(fname, lname):
  print(fname + " " + lname)

my_function("Emil", "Refsnes") 

print("\n")
# Arbitrary Arguments, *args 
# If you do not know how many arguments that will be passed into your function, add a * before the parameter name in the function definition.
#This way the function will receive a tuple of arguments, and can access the items accordingly

def my_function(*kids):
  print("The youngest child is " + kids[2])

my_function("Emil", "Tobias", "Linus") 

print("\n")
# You can also send arguments with the key = value syntax. This way the order of the arguments does not matter.
def my_function(child3, child2, child1):
  print("The youngest child is " + child3)

my_function(child1 = "Emil", child2 = "Tobias", child3 = "Linus") 

print("\n")
# Arbitrary Keyword Arguments, **kwargs
# If the number of keyword arguments is unknown, add a double ** before the parameter name
def my_function(**kid):
  print("His last name is " + kid["lname"])

my_function(fname = "Tobias", lname = "Refsnes") 

print("\n")
# Default Parameter Value
def my_function(country = "Norway"):
  print("I am from " + country)

my_function("Sweden")
my_function("Pakistan")
my_function()
my_function("Brazil") 

print("\n")
# Passing a List as an Argument
# You can send any data types of argument to a function (string, number, list, dictionary etc.)
def my_function(food):
  for x in food:
    print(x)

fruits = ["apple", "banana", "cherry"]

my_function(fruits)

print("\n")
#Return Values
def my_function(x):
  return 5 * x

print(my_function(3))
print(my_function(5))
print(my_function(9))
