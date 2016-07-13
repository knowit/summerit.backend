var bleacon = require('bleacon');
var io = require('socket.io-client')
var socket = io.connect('http://localhost:3000', {reconnect: true});

bleacon.on('discover', function (bleacon) {
	console.log(bleacon);
	if(bleacon.minor === 2){
	    console.log(JSON.stringify(bleacon));
	}
    // your custom code here
    // Take the code and send it to server
    // or triangulate that shit
    socket.emit('server:info', bleacon);
});


socket.on('beacon:run', function() {
	console.log('Collecting beacons data');

	bleacon.startScanning(/*uuid,major,minor*/);
})

socket.on('beacon:history', function () {
	socket.emit('server:results');
});


socket.on('connect', function(data) {
	console.log('connected');
});