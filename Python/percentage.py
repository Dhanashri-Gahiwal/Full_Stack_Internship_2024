sub1 = int(input("Enter the marks of sub1"))
sub2 = int(input("Enter the marks of sub2"))
sub3 = int(input("Enter the marks of sub3"))

total = sub1 + sub2 + sub3
percentage = int(total/3)
print("Percentage =",percentage)

if(percentage >= 75):
    print("Grade = A+")
elif(percentage >= 60):
    print("Grade = A")
elif(percentage >= 50):
    print("Grade = B")
elif(percentage >= 35):
    print("Grade = C")
else:
    print("Grade = Fail")
