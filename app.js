const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send(
    "<h1>AS, Cloudfront, LB Demo App</h1> <h4>Message: Success</h4> <p>Version: 1.0.0</p>"
  );
});

app.get("/users", (req, res) => {
  res.send(
    "<h1>AS, Cloudfront, LB App</h1> <h4>Message: Success</h4> <h5>This is the Users Page</h5> <p>Version: 1.0.0</p>"
  );
});

app.get("/user/:id", (req, res) => {
  res.send(
    `<h1>AS, Cloudfront, LB Demo App</h1> <h4>Message: Success</h4> <h5>This is a User with id ${req.params.id}</h5> <p>Version: 1.0.0</p>`
  );
});

app.listen(port, () => {
  console.log(`Demo app is up and listening to port ${port}`);
});
