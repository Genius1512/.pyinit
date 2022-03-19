import tkinter as tk


class App(tk.Tk):
    def __init__(self):
        """
        GUI App
        """
        super().__init__()
        self.title("GUI App")
        self.protocol("WM_DELETE_WINDOW", self.on_close)

    def run(self):
        """
        Call to run the app
        """
        self.mainloop()

    def on_close(self):
        """
        Called when closing the window
        """
        self.destroy()


def main():
    """
    Entry point
    """
    app = App()
    app.run()


if __name__ == "__main__":
    main()
