# BashPush Experiment

When you hear "Realtime" and "Push Notifications" you probably think NodeJS, SDKs, Async Python, Firebase Cloud
Messaging, etc etc. But what if we could send push notifications with bash as a client
and any TCP server as a push server.

This is exactly what this experiment does.

> The TCP server is in the end written in Node because it's jsut easy and I'm used to it.

## Usage
Clone the repository and run the server using:

```sh
node server.js
```

and then run the client with:

```sh
./BashPush.sh
```

The server shold prompt you titles and bodies to send to the client as a push notification.

## Limitation

Currently I just used the `notify-send` command and tested it on Ubuntu. You have to make
sure the `notify-send` command is available.
