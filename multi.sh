#!/bin/zsh

for x in {5..25}; do
	y=`expr $x + 5`
	fn="delme$x"
	no="5$y"
	cmd="zsh ./rocky.sh $no $fn"
	eval "$cmd &"
done

