#!/bin/bash
wget https://www.artstation.com/clementdartigues.rss -O index.rss
cat index.rss | grep -o '<img src="[^"]*'  | grep -o '[^"]*$' | grep -Eo '^[^\?]+' | xargs wget
