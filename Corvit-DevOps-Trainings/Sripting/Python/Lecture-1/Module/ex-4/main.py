# Built-in Modules
# There are several built-in modules in Python, which you can import whenever you like.

import platform

x = platform.system()
print(x) 

print('\n')

# Using the dir() Function
# There is a built-in function to list all the function names (or variable names) in a module. The dir() function
# List all the defined names belonging to the platform module
y = dir(platform)
print(y)

