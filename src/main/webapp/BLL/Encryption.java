/**
 * @author Wang Yang
 * @time ${YEAR}
 * @Github https://github.com/NorthstarWang
 */
package BLL;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Encryption {
    public String SHA(String strText)
    {
        String strResult = null;
            try
            {
                // SHA Encryption start
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(strText.getBytes());
                // Get Byte Result
                byte[] byteBuffer = messageDigest.digest();

                // Convert Byte to String
                StringBuilder strHexString = new StringBuilder();
                for (byte b : byteBuffer) {
                    String hex = Integer.toHexString(0xff & b);
                    if (hex.length() == 1) {
                        strHexString.append('0');
                    }
                    strHexString.append(hex);
                }
                strResult = strHexString.toString();
            }
            catch (NoSuchAlgorithmException e)
            {
                e.printStackTrace();
            }
        return strResult;
    }
}
