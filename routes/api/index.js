const router = require("express").Router();
const apiStory = require("./story");
const apiContact = require("./contact");
const apiAgency = require("./agency");
const apiArticles = require("./articles");

router.use("/story", apiStory);
router.use("/contact", apiContact);
router.use("/agency", apiAgency);
router.use("/articles", apiArticles);

module.exports = router;
