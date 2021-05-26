#!/bin/bash

echo "Hello, welcome to Plant Shop"
echo "Please type the file name to start pogram"
read PLANT
PLANT_PATH="./plants/$PLANT"
echo "$PLANT_PATH"

ruby plant_shop.rb -path $PLANT_PATH