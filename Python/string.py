str1 = "codingseekho"
str2 = 'codingseekho'
print(str1)
count = 0
char = input("Enter a character you want to search")
for i in str1:
    if(i == char):
        count += 1
print("Given character",char,"occurs",count,"times")


