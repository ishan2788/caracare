import random


def generate_unique_email(context):
    rand = random.randint(1, 999)
    return "ishan27588+" + \
        str(context.code) + "-" + str(rand) + "@gmail.com"
