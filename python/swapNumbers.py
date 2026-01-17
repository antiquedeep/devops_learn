a, b = map(int, input("Enter 2 number to see magic of swap: ").split())
z = 0
print(f"\nBefore swap A: {a}, B: {b}")
z = a
a = b
b = z
print(f"\nAfter swap A: {a}, B: {b}")