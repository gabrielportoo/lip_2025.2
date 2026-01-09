from functools import reduce

print(
    (lambda n: reduce(lambda x, y: x * y, range(n, 0, -2), 1))(
        int(input())
    )
)