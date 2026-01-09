print(
    *(lambda lista, p: list(filter(lambda x: x != p, lista)))(
        map(int, input().split()),
        int(input())
    )
)