#!/bin/bash
# Check if Dingtone grocery shopping has delivery slots, and push it through Bark if it does.

# (*) Please fill in the BarkId
barkId=""

while :; do

echo "Checking for available delivery slots..."

# (*)Please fill the cURL command, don't forget to output to tmp.json
# curl https://maicai.api.ddxq.mobi/order/getMultiReserveTime > tmp.json

responseCodeCheck=`cat tmp.json | jq -r '.code'`

if [[ $responseCodeCheck -ne 0 ]]; then
    cat tmp.json
    echo "😭 Sorry Please check if the cURL command can get the correct data"
    exit 1
fi

availableCount=`cat tmp.json | jq -r '.data[0].time[0].times[].disableType' | grep -c 0`

if [[ $availableCount -gt 0 ]]; then
    echo "🎉 Congratulations! Please place your order as soon as you find an available delivery slot!"
    curl "https://api.day.app/$barkId/Dingtone_grocery_shopping_has_available_delivery_slots_please_place_your_order_as_soon_as_possible/"
    exit 0
fi


sleepTime=$(( ( RANDOM % 30 )  + 30 )) #Sleep between 30 and 60 seconds

echo "No available delivery time Hibernate "$sleepTime" seconds and try again..."
sleep $sleepTime

done
