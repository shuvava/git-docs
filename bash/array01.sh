#!/bin/bash
arr=(Hello World)
echo ${arr[0]} ${arr[1]}

array=(one two three four [5]=five)

echo "Array size: ${#array[*]}"  # Выводим размер массива

echo "Array items:" # Выводим записи массива
for item in ${array[*]}
do
    printf "   %s\n" $item
done

echo "Array indexes:" # Выводим индексы массива
for index in ${!array[*]}
do
    printf "   %d\n" $index
done

echo "Array items and indexes:" # Выводим записи массива с их индексами
for index in ${!array[*]}
do
    printf "%4d: %s\n" $index ${array[$index]}
done
