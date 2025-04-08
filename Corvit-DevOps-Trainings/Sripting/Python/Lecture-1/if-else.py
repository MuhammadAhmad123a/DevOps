# if statement

a = 33
b = 200
if b > a:
  print("b is greater than a")
 
print('\n')  
# Short Hand If

if a > b: print("a is greater than b")

print('\n')
# if-else statement

c = 200
d = 33
if d > c:
  print("d is greater than c")
else:
  print("d is not greater than c")

print('\n')
# Short Hand If / Else

x = 2
y = 330
print("x") if x > y else print("y") 

print('\n')
# Elif Statement - The elif keyword is Python's way of saying "if the previous conditions were not true, then try this condition".

e = 200
f = 33
if f > e:
  print("f is greater than e")
elif f == e:
  print("e and f are equal")
else:
  print("e is greater than f")

print('\n')
# You can also have an elif without the else:

g = 33
h = 33
if h > g:
  print("h is greater than g")
elif h == g:
  print("h and g are equal")

print('\n')
# Nested If

i = 41

if i > 10:
  print("Above ten,")
  if i > 20:
    print("and also above 20!")
  else:
    print("but not above 20.") 

print('\n')
# Ternary Operators

A = 330
B = 330
print("A") if A > B else print("=") if A == B else print("B") 

print('\n')
# AND 

ab = 200
bc = 33
ca = 500
if ab > bc and ca > ab:
  print("Both conditions are True")

print('\n')
# OR

nm = 200
mo = 33
op = 500
if nm > mo or nm > op:
  print("At least one of the conditions is True")

print('\n')
#NOT

w = 33
v = 200
if not w > v:
  print("w is NOT greater than v")