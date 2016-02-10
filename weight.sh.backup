#!/bin/bash
#takes two parameters when ran first is current weight second is goal weight 
CURRENTWEIGHT="$1"
GOALWEIGHT="$2"
DIFFRENCE=$[$CURRENTWEIGHT - $GOALWEIGHT]
if [ $DIFFRENCE -gt 0 ]
then
echo "You have $DIFFRENCE lb(s) to lose!"
elif [ $DIFFRENCE -lt 0 ]
then
echo "You have $[$DIFFRENCE*(-1)] lb(s) to gain!"
else
echo "You have met your goal"
fi

