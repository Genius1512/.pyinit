# TODO: write script
import sys

from rich.console import Console as c


class Console:
    @staticmethod
    def print(*objects, sep=" ", end="\n", file=sys.stdout, flush=False):
        c.print(objects, sep=sep, end=end, file=file, flush=flush)

    def error(*objects, sep=" ", end="\n", file=sys.stdout, flush=False):
        c.print(objects, sep=sep, end=end, file=file, flush=flush, style="bold red")
