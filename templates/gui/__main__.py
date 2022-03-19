import tkinter as tk


class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("GUI App")
        self.protocol("WM_DELETE_WINDOW", self.on_close)

    def run(self):
        self.mainloop()

    def on_close(self):
        self.destroy()


def main():
    app = App()
    app.run()


if __name__ == "__main__":
    main()
