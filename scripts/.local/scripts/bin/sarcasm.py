#!/usr/bin/python3

from random import choice


def sarcastic(text: str) -> str:
    """
    Takes a string of text and makes it "sarcastic" or "stupid" depending on who
    you ask.

    For Example:
    
        sarcastic("I could save 30 seconds if I spend 2 hours automating it.")
            -> "i coUlD SAVE 30 sECoNds if I SpeNd 2 hOUrs aUTOMaTINg IT."
    """
    functions = [__as_uppercase, __as_lowercase]
    sarcastic_text = str()
    for char in text:
        function = choice(functions)
        sarcastic_text += function(char)
    return sarcastic_text


def __as_uppercase(text: str):
    return text.upper()


def __as_lowercase(text: str):
    return text.lower()


if __name__ == "__main__":
    from sys import stdin, exit

    from argparse import ArgumentParser

    def main():
        args = parse_args()
        if len(args.text) == 0:
            text = read_from_stdin()
        else:
            text = " ".join(args.text)
        print(sarcastic(text))

    def read_from_stdin():
        if not stdin.isatty():
            return "".join(stdin.readlines())
        else:
            return ""

    def parse_args():
        parser = ArgumentParser(
            description="""
                maKES saRCaStIc Or sTupID TeXt bY RAndoMing THE CAsInG OF 
                LeTTERs.
            """,
            epilog="""
                SarcaSM is CrEAteD BY AlExiWOlf (alexiwolf@pm.me), AnD iS 
                liCEnSeD UNDer tHE UnLICENSe (https://unlicense.org/)
            """
        )
        parser.add_argument(
            "text", type=str, help="THe teXT TO MAKe saRcAstIC", nargs="*"
        )
        return parser.parse_args()

    exit(main())
