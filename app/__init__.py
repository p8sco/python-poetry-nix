import requests


def main():
    r = requests.get("https://api.github.com/users/portothree")
    print(r.content)


if __name__ == "__main__":
    main()
