package model;

import java.security.MessageDigest;

import org.apache.commons.codec.binary.Base64;

public class Mahoa {
	public static String toSHA1(String str) {
        String salt = "asdftyurtas@df;werjklwqebr ";
        String result = "";
        
        try {
            String saltedStr = str + salt;
            byte[] dataBytes = saltedStr.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            result = Base64.encodeBase64String(md.digest(dataBytes));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
