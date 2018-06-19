import re


def is_pangram(sentence):
    sentence = sentence.lower()
    sentence = re.sub(r'([^a-z])', "", sentence)

    if len(list(set(sentence))) < 26:
        return False
    elif len(list(set(sentence))) == 26:
        return True
    pass
