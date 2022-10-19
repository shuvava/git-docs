#!/bin/bash

array=("first item" "second item" "third" "item")

echo "Number of items in original array: ${#array[*]}"
for ix in ${!array[*]}
do
    printf "   %s\n" "$ix: ${array[$ix]}"
done
echo

arr=("${array[*]}")
echo "After unquoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "$ix: ${arr[$ix]}"
done
echo

arr=("${array[*]}")
echo "After * quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "$ix: ${arr[$ix]}"
done
echo

arr=("${array[@]}")
echo "After @ quoted expansion: ${#arr[*]}"
for ix in ${!arr[*]}
do
    printf "   %s\n" "${arr[$ix]}"
done

echo "item is in array: ${array[*]/item/}"

item="item"
if [[ " ${array[*]} " =~ ${item} ]]; then
    echo "item is in array"
else
    echo "item is not in array"
fi

item="test"
if [[ ! " ${array[*]} " =~ ${item} ]]; then
    echo "item is not in array"
else
    echo "item is in array"
fi

[[ "${array[*]}" =~ (^|[[:space:]])"$item"($|[[:space:]]) ]] && echo 'yes' || echo 'no'