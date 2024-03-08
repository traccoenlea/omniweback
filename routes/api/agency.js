const router = require("express").Router();

router.get("/getAgencyStory", async (req, res) => {
  const sql = `SELECT * FROM story`;
  connection.query(sql, (err, result) => {
    if (err) throw err;
    res.send(JSON.stringify(result));
  });
});

module.exports = router;
