const http = require("http");
const server = http.createServer();

server.on("request", async (_, res) => {
  await res.writeHead(200, { "Content-Type": "text/plain" });

  await res.write("Hello world!");
  res.end();
});
console.log("Listen on port:5000");
server.listen(5000) 