#!/bin/bash

START=1
END=25

if [ "$1" != "all" ]; then
  START=$1
  END=$1
fi

for (( i=${START}; i<=${END}; ++i)); do
  cp include/solutions/aoc_day_0.h include/solutions/aoc_day_${i}.h
  sed -i '' -e "s/AOC_DAY_0/AOC_DAY_${i}/g" include/solutions/aoc_day_${i}.h
  sed -i '' -e "s/AocDay0/AocDay${i}/g" include/solutions/aoc_day_${i}.h

  cp src/solutions/aoc_day_0.cpp src/solutions/aoc_day_${i}.cpp
  sed -i '' -e "s/aoc_day_0/aoc_day_${i}/g" src/solutions/aoc_day_${i}.cpp
  sed -i '' -e "s/AocDay0/AocDay${i}/g" src/solutions/aoc_day_${i}.cpp
  sed -i '' -e "s/AocDay(0)/AocDay(${i})/g" src/solutions/aoc_day_${i}.cpp
done
