a, b = map(int, input("Enter 2 number Find Closest to 1st number and Divisible by 2nd number: ").split())
while a % b != 0:
    a = a + 1
print(a)