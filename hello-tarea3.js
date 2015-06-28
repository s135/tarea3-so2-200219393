//Tarea #3 de SO2 
//Sergio Santos, carnet 200219393

var http = require('http');


var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Tarea #3 - S02\nSergio Romeo Santos Revolorio\ncarnet 200219393");
});

server.listen(8000);
console.log("Servidor Nodejs - http://127.0.0.1:8000/");
