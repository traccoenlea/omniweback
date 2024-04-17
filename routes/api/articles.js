const router = require("express").Router();

router.get("/getArticles", async (req, res) => {
  const sql = `SELECT * FROM articles`;
  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify(result));
  });
});

module.exports = router;
