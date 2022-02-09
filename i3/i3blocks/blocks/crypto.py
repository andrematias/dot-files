#! /usr/bin/python
import sys
import requests


def get_currency_price(ticket="BTCUSDT"):
    response = requests.get(f'https://api.binance.com/api/v3/ticker/price?symbol={ticket}')
    if response.status_code == 200:
        return float(response.json()['price'])


def main(ticket="BTCUSDT"):
    currency_price = get_currency_price(ticket)
    if currency_price:
        print(f"{currency_price:.2f}")
    else:
        print(f"Currency '{ticket}' not found")


def help():
    help_message = """
Usage: btc.py [ticket]
ticket (optional) = A ticket like XRPUSDT. Default is BTCUSDT
"""
    print(help_message)


if __name__ == "__main__":
    if len(sys.argv) > 2:
        help()
        sys.exit(1)

    ticket = sys.argv[1] if len(sys.argv) == 2 else "BTCUSDT"
    main(ticket)
