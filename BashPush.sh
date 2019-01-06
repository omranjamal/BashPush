while :
do
    echo "Connecting..."
    ./openSocket.sh 2>/dev/null

    echo "Connection Error."
    echo "Attempting Reconnection in 10 Seconds."
    sleep 10
done