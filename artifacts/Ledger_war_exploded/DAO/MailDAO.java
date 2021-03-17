/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package DAO;

import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.GeneralSecurityException;
import java.util.Properties;
import java.util.Random;

public class MailDAO{
    //发件人信息
    private String From = "Your mail name";
    //发件人邮箱
    private String recipient = "Your mail";
    //邮箱密码
    private String password = "16 characters cod";
    //邮件发送的服务器
    private String host = "Mail host, e.g. smtp.qq.com";


    public String RandomSix(){
        Random random = new Random();
        String result="";
        for (int i=0;i<6;i++)
        {
            result+=random.nextInt(10);
        }
        return result;
    }

    public String send(String email){

        String code = RandomSix();

        try {
            Properties properties = new Properties();

            properties.setProperty("mail.host", "smtp.qq.com");

            properties.setProperty("mail.transport.protocol", "smtp");

            properties.setProperty("mail.smtp.auth", "true");

            //QQ存在一个特性设置SSL加密
            MailSSLSocketFactory sf = null;
            try {
                sf = new MailSSLSocketFactory();
            } catch (GeneralSecurityException e) {
                e.printStackTrace();
            }
            sf.setTrustAllHosts(true);
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.ssl.socketFactory", sf);

            //创建一个session对象
            Session session = Session.getDefaultInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(recipient, password);
                }
            });

            //开启debug模式
            session.setDebug(true);

            //获取连接对象
            Transport transport = null;
            try {
                transport = session.getTransport();
            } catch (NoSuchProviderException e) {
                e.printStackTrace();
            }

            //连接服务器
            transport.connect(host, From, password);


            //创建一个邮件发送对象
            MimeMessage mimeMessage = new MimeMessage(session);
            //邮件发送人
            mimeMessage.setFrom(new InternetAddress(recipient));

            //邮件接收人
            mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(email));

            //邮件标题
            mimeMessage.setSubject("Juncus.tech Email Verification Code");

            //邮件内容
            mimeMessage.setContent("The code is " + code, "text/html;charset=UTF-8");

            //发送邮件
            transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());

            transport.close();

            return code;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}