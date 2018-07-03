import re


def is_isogram(string):
    string = string.lower()
    string = re.sub(r'([^a-z])', "", string)
    # print(new_string)
    if len(list(set(string))) == len(list(string)):
        return True
    else:
        return False
    pass
