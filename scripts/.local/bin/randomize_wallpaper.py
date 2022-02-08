#! /usr/bin/python3

from time import sleep
from os import getcwd, path, system


def main(args):
    if args.display_time == -1:
        set_random_wallpaper_from(args.folder)
    else:
        randomize_forever(args.display_time, args.folder)


def randomize_forever(display_time, folder):
    while True:
        has_failed_to_set_wallpaper = set_random_wallpaper_from(folder)
        if has_failed_to_set_wallpaper:
            break
        else:
            sleep(display_time)


def set_random_wallpaper_from(folder):
    wallpaper_paths = path.join(folder, "*")
    return system(f"feh --randomize --bg-scale {wallpaper_paths}")


if __name__ == "__main__":
    from argparse import ArgumentParser
    from sys import exit

    argument_parser = ArgumentParser(
        description="randomizes your desktop background"
    )

    argument_parser.add_argument(
        "-f",
        "--folder",
        required=False,
        default=getcwd(),
        help="set the folder to get wallpapers from (default: cwd)",
    )
    argument_parser.add_argument(
        "-d",
        "--display_time",
        required=False,
        default=-1,
        type=float,
        help="""
            set how long to display the wallpaper, in seconds, before 
            randomizing it again.  set to -1 to randomize once then exit 
            (default: -1)
        """,
    )

    args = argument_parser.parse_args()

    feh_is_not_installed = system("feh --version")
    if feh_is_not_installed:
        print("ERROR: feh is not installed.")
        print("Install it using your system's package manager.")
        exit(1)

    exit(main(args))

