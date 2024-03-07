const router = require("express").Router();
const nodemailer = require("nodemailer");

router.post("/", async (req, res) => {
  console.log("coucou le back");
  try {
    const email = req.body[0].email;
    const name = req.body[0].name;
    const surname = req.body[0].surname;
    const message = req.body[0].message;
    const date = req.body[0].date;
    // console.log(email, name, surname, message, date);
    sendEmail(email, name, surname, message, date);
    res.status(200).send({ message: "L'email a été envoyé avec succès." });
  } catch (error) {
    console.error(error);
    if (error) {
      console.log("Erreur mail");
      res
        .status(500)
        .send(JSON.stringify("Erreur lors de l'envoi de l'email."));
    } else {
      console.log("Email envoyé");
      res.status(200).send({ message: "L'email a été envoyé avec succès." });
    }
  }
});

function sendEmail(email, name, surname, message, date, callback) {
  const transporter = nodemailer.createTransport({
    service: "outlook",
    auth: {
      user: "omniweb@outlook.fr",
      pass: "MT^32aNP?%*Wva?",
    },
  });

  const mailOptions = {
    from: "omniweb@outlook.fr",
    to: "omniweb@outlook.fr",
    subject: "Nouvelle prise de contact ! ",
    text: `${name} ${surname} a pris contact avec nous (${date}) ! 
    Son message : ${message}.
    Pour le recontacter, il a laissé son mail : ${email}.
    Bon courage nous du futur ! `,
    html: `<b>${name} ${surname}</b> a pris contact avec nous (${date}) ! <br/>
    Son message : <br/>"<b>${message}</b>"<br/>
    Pour le recontacter, il a laissé son mail : <i>${email}</i><br/>
    Bon courage nous du futur ! `,
  };

  transporter.sendMail(mailOptions, callback);
}

module.exports = router;
