
num=int(input("Enter number to known is it even or odd: "))
print(type(num)) # prints the type to check if it is int or not

if( num % 2 == 0): # Using Modulo to check if remender is 0 if 0 then it is even else odd
    print(f"{num} it is even")
else:
    print(f"{num} it is odd")