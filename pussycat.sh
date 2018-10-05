AMOUNT="$@"

[[  $AMOUNT && ${AMOUNT-x} ]] && echo "meow.." || exit 0

curl -s https://localbitcoins.net/buy-bitcoins-online/rub/transfers-with-specific-bank/.json … | jq -r '($rubles | tonumber) / (.data.ad_list[0].data.temp_price | tonumber)' --arg rubles $AMOUNT
