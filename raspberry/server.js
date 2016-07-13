var express = require('express');
var app = express();
var port = 3000;
var http = require('http').Server(app);
var io = require('socket.io')(http);

io.on('connect', function (socket) {
	console.log('New user');
	io.emit('beacon:run');

	socket.on('server:info', function (data) {
		console.log("Server:results");
		console.log(data);
	})
})

http.listen(port, function () {
	console.log('Server running http://localhost:' + port + '/');
})
