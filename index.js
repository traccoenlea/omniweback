const connection = require("./database");
const bodyParser = require("body-parser");

const express = require("express");
// dépendance qui permet de récupérer facilement les cookies dans les requêtes

// on initialise l'application
const app = express();

//additions to get the reinit password
app.set("view engine", "ejs");

const routes = require("./routes");

const http = require("http");
const server = http.createServer(app);

const cors = require("cors");
const { error, log } = require("console");
// const port = 8000;
const port = 8000;
// const port = 5000;

app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
  res.header("Access-Control-Allow-Headers", "Content-Type");
  next();
});

app.use(bodyParser.json({ limit: "100mb" }));
app.use(bodyParser.urlencoded({ limit: "100mb", extended: true }));

// const cookie = require("cookie-parser");

// middleware qui permet d'extraire les cookies
// app.use(cookie());

// cela permet d'extraire le body qui est stringify au format object JS
app.use(bodyParser.json());

app.use(routes);

// si la route n'a pas été trouvé cela renvoie un status 404
app.use("*", (req, res) => {
  res.status(404).end();
});

// on écoute sur le port 8000
// app.listen(8000);
app.listen(port, () => console.log(`Server started on PORT ${port}`));

connection.connect((err) => {
  if (err) {
    console.error("Erreur de connexion à la base de données : " + err.stack);
    return;
  }
  console.log("Connecté à la base de données MySQL, écoutant le port " + port);
});

app.timeout = 0;

// app.get("/", (_, res) => {
//   res.send(JSON.stringify("API WORKING"));
// });
