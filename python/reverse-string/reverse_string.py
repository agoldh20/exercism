def reverse(input=''):
    reverse_string = []
    letters = list(input)
    for _ in range(len(letters)):
        reverse_string.append(letters.pop())
    return "".join(reverse_string)
    pass
