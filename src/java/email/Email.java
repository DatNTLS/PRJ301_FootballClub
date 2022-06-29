/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ASUS
 */
public class Email {

    public static void main(String[] args) {
        Email em = new Email();
        System.out.println(em.getRandom(6));
        em.sendConfirmAccount("123456", "datagame21stcentury@gmail.com");
    }
    
    public String getRandomNumber() {
        String number = ((int) Math.floor(Math.random() * (999999 - 100000 + 1) + 100000)) + "";
        return number;
    }

    public String getRandom(int size) {
        String AlphaNumericString = "0123456789"
                + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder(size);
        for (int i = 0; i < size; i++) {
            int index
                    = (int) (AlphaNumericString.length()
                    * Math.random());
            sb.append(AlphaNumericString
                    .charAt(index));
        }
        return sb.toString();
    }

    public void sendConfirmAccount(String number, String emailTo) {
        //Setup server mail
        final String username = "nguyendat15062001ls@gmail.com";
        final String password = "123456789dat";
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.post", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true");
        Session mailSession = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        //Send to customer
        String emailSubject = "Your New Password";
        String emailContent = "<p>" + number + " </p>";
        try {
            MimeMessage message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailTo));
            message.setSubject(emailSubject);
            message.setContent(emailContent, "text/html; charset=utf-8");
            Transport.send(message);
            System.out.println("Send Successfully !");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

}
