#!/bin/bash

# start Nordvpn connection and run PyLoader in new Browser Window

# start nordvpn in Switzerland
nordvpn c ch

# start PyLoader
pyLoadCore

# open a new browser window for PyLoader
firefox --new-window http://localhost:8000
