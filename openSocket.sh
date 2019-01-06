exec 5<>/dev/tcp/0.0.0.0/8053

echo "Connected."

while :
do
    if printf ">PING" >&5;
    then
        read LINE <&5
        
        TITLE=$(echo "$LINE" | grep -E ""[^,]+"" -o | sed '1q;d' | cut -d'"' -f 2)
        BODY=$(echo "$LINE" | grep -E ""[^,]+"" -o | sed '2q;d' | cut -d'"' -f 2)
        
        echo "Triggering Ubuntu Notification -> $TITLE: $BODY"

        notify-send "$TITLE" "$BODY"
    else
        break
    fi
done