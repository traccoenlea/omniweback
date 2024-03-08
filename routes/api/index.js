const router = require("express").Router();
const apiStory = require("./story");
const apiContact = require("./contact");
const apiAgency = require("./agency");

router.use("/story", apiStory);
router.use("/contact", apiContact);
router.use("/agency", apiAgency);

module.exports = router;
