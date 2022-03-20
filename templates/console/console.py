from rich import print
from rich.status import Status


class Console:
    @staticmethod
    def print(*objects):
        for object in objects:
            print(object, end=" ")
        print("")
    
    @staticmethod
    def success(*objects):
        for object in objects:
            print(f"[bold green]{object}[/bold green]", end=" ")
        print("")
    
    @staticmethod
    def warn(*objects):
        for object in objects:
            print(f"[bold yellow]{object}[/bold yellow]", end=" ")
        print("")

    @staticmethod
    def error(*objects):
        for object in objects:
            print(f"[bold red]{object}[/bold red]", end=" ")
        print("")


class Spinner:
    def __init__(self, status: str, done_text: str = "Done."):
        self.done_text = done_text
        self.spinner = Status(
            status=status,
            spinner="dots"
        )
        self.spinner.start()

    def stop(self):
        self.spinner.stop()
        print(self.done_text)
        del self


if __name__ == "__main__":
    Console.print("Basic")
    Console.success("Success")
    Console.warn("Warning")
    Console.error("Error")

    spinner = Spinner("Doing...", "Done")
    __import__("time").sleep(2)
    spinner.stop()
