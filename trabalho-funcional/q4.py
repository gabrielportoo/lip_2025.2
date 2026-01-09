print(
    *(lambda lista: (max(lista), min(lista)))(
        list(map(int, input().split()))
    )
)