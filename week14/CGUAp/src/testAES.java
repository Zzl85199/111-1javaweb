import fep.AES;

public class testAES {

	public static void main(String[] args)throws Exception {
		// TODO Auto-generated method stub
		String k="20071225076151111";
	    String plain="U123456789";
	    //加密 
		String en = AES.getencrypt(k,plain);		
	    String encryptd=new String (en);
	    System.out.println("加密文:"+encryptd);
	    String dec=AES.getdecrypt(k, encryptd);
	    System.out.println("解密文:"+dec);
	}
}
