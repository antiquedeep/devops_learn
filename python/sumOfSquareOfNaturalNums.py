
num = int(input("Enter number to perform it sum: "))
rangenum = 1
total = 0
square = 0
while rangenum <= num:
    square = rangenum ** 2
    total = total + square
    rangenum = rangenum + 1
print(total)
