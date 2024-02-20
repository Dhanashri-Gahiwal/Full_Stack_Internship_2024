'''password = input("Enter password")
print("Password =",password)
length = len(password)
print("Length of password =",length)'''

'''for i in password:
    print(i)'''
valid = 0
digit = 0
upper = 0
lower = 0

for i in range(0,3):
    password = input("Enter password")
    length = len(password)
    print("Length of password =",length)
    
    for j in password:
        if(j.isdigit()):
            digit = 1
        if(j.isupper()):
            upper = 1
        if(j.lower()):
            lower = 1
    if(digit == 1 and upper == 1 and lower == 1 and length >= 8):
        valid = 1
        print("Valid Password")
        break
    else:
        valid = 0
        print("Invalid Password")
        
