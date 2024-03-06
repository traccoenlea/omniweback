const router = require("express").Router();
const apiStory = require("./story");

router.use("/story", apiStory);

module.exports = router;
