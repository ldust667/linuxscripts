#!/bin/bash
i="0"
while [ $i -lt 10 ]
do
term &
i=$[$i+1]
done
