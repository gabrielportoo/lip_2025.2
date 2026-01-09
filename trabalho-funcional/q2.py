print(
    *(lambda p: (p[1], p[0]))(
        max(
            enumerate(
                map(int, input().split())
            ),
            key=lambda x: x[1]
        )
    )
)