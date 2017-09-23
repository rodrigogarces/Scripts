#!/bin/sh

sudo usermod -a -G tty $USER
sudo usermod -a -G dialout $USER
