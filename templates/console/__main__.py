from arg_parse import parse_args

from console import *


def main():
    """
    Entry point
    """
    args = parse_args()

    Console.print("asdf", end="")
    Console.print("jklö")


if __name__ == "__main__":
    main()
