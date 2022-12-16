package fep;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class DESEncrypt {
	private String Plaintext;
	private byte[] Ciphertext;
	public DESEncrypt(String pText){
		this.Plaintext=pText;
	}
	public void setPlainText(String pText) {
		this.Plaintext=pText;
	}
	public void setCiperText(byte[] cp) {
		Ciphertext=cp;
	}
	public byte[] getEntryptText() throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
		EncryptDES de1 = new EncryptDES();		
		byte[] encontent = de1.Encrytor(this.Plaintext);		
		return encontent;
	}
	public String getDecryptText() throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
		EncryptDES de1 = new EncryptDES();
		byte[] decontent = de1.Decryptor(Ciphertext);
		return new String(decontent);
	}
}
