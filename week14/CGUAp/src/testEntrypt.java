import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import fep.DESEncrypt;

public class testEntrypt {

	public static void main(String[] args) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
		// TODO Auto-generated method stub
		DESEncrypt fep = new DESEncrypt("A123456789");
		byte[] cp1= fep.getEntryptText();
		String id=new String(cp1);
		System.out.println("ID="+id);
		fep.setCiperText(cp1);
		System.out.println("Plain Text ID="+fep.getDecryptText());
	}

}
