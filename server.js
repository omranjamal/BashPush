const net = require('net');

const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function send(socket) {
    rl.question('Title: ', (t) => {
        rl.question('Body: ', (b) => {
            socket.write(`"${t}","${b}"\n`);
            send(socket);
        });
    });
}

const server = net.createServer((socket) => {
    console.log(`Socket Connected.`);


    send(socket);
    
    socket.on('close', () => {
        console.log(`Socket Closed.`);
    });
});

server.listen(8053, '0.0.0.0');
