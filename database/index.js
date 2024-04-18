const mysql = require("mysql");

// module.exports = connection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   password: "",
//   database: "omniweb",
// });

module.exports = connection = mysql.createConnection({
  // host: "fdb1034.awardspace.net",
  // host: "ns6.awardspace.com",
  // host: "185.176.40.88:3306",
  host: "sql11.freemysqlhosting.net",
  user: "sql11700051",
  password: "IcaYucmuca",
  database: "sql11700051",
  port: "3306",
});
