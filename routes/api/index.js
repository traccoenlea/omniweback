const router = require("express").Router();
const apiStory = require("./story");
const apiContact = require("./contact");

router.use("/story", apiStory);
router.use("/contact", apiContact);

module.exports = router;
