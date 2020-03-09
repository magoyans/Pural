"use strict";
const nodemailer = require("nodemailer");

// async..await is not allowed in global scope, must use a wrapper
async function main(objeto) {
try{
    let transporter = nodemailer.createTransport({
    host: "smtp.gmail.com",
    port: 587,
    secure: false, // true for 465, false for other ports
    auth: {
        user: 'malegonzalezyabo@gmail.com', // generated ethereal user
        pass: 'acaestatodo2017' // generated ethereal password
    },
    tls: {
        rejectUnauthorized : false
    }
    });

    // send mail with defined transport object
    let info = await transporter.sendMail({
    from: '"Pural | No reply" <pural@noreply.com>', // sender address
    to: "malegonzalezyabo@gmail.com", // list of receivers
    subject: "New contact request", // Subject line
    html: "The user : " +objeto.name+  " with mail : " +objeto.email + ", sent the following message :<br> "+objeto.message
    });
    return info.messageId;

} catch(error) {
    console.log(error);
}
  
}

module.exports = {main} 