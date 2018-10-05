#!/bin/bash -x
git clone https://github.com/jimisan/meow.git
cd meow
sudo ln -s $(pwd)/pussycat.sh /usr/local/bin/pussycat
sleep 1
pussycat 5000

