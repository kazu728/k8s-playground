const http = require("http");
const server = http.createServer();

server.on("request", async (req, res) => {
  await res.writeHead(200, { "Content-Type": "text/plain" });

  await res.write("Hello world!");
  res.end();
});

console.log("[server] listen at port:5000");
server.listen(process.env.PORT || 5000);

