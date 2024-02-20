password = input("Enter password")
length = len(password)
'''print(length)
print(password.isdigit())
print(password.isupper())
print(password.islower())'''

upper = 0
lower = 0
digit = 0

for i in password:
    if(i.isdigit()):
        digit = 1
    if(i.isupper()):
        upper = 1
    if(i.islower()):
        lower = 1
if(digit == 1 and upper == 1 and lower == 1 and length >= 8 ):
    print("Valid Password")
else:
    print("Invalid Password")
