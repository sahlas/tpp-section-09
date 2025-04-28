def nth_fibonacci(n: int) -> int:
    """
    Adds two numbers together.

    Args:
        x: The first number.
        y: The second number.

    Returns:
        The sum of x and y.
    """
    if n in [1, 2]:
        return 1

    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)


print(nth_fibonacci(10))
