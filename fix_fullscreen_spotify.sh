#!/bin/bash

sed -i '/app.window.position.width=/c\app.window.position.width=800' .config/spotify/prefs
sed -i '/app.window.position.height=/c\app.window.position.height=600' .config/spotify/prefs
