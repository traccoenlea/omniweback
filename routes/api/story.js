const router = require("express").Router();

router.get("/allStory", async (req, res) => {
  console.log("on est dans le back");
  const sql = `SELECT * FROM story`;
  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify(result));
  });
});

module.exports = router;
