package fep;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class EncryptDES {	
		
		//KeyGenerator 提供對稱金鑰生成器的功能，支援各種演算法
		private KeyGenerator keygen;
		//SecretKey 負責儲存對稱金鑰
		private SecretKey deskey;
		//Cipher負責完成加密或解密工作
		private Cipher c;
		//該位元組陣列負責儲存加密的結果
		private byte[] cipherByte;
		
		public EncryptDES() throws NoSuchAlgorithmException, NoSuchPaddingException{
			//Security.addProvider(new SunJCE());
			//例項化支援DES演算法的金鑰生成器(演算法名稱命名需按規定，否則丟擲異常)
			keygen = KeyGenerator.getInstance("DES");
			//生成金鑰
			deskey = keygen.generateKey();
			//生成Cipher物件,指定其支援的DES演算法
			c = Cipher.getInstance("DES");
		}
		
		/**
		 * 對字串加密
		 * 
		 * @param str
		 * @return
		 * @throws InvalidKeyException
		 * @throws IllegalBlockSizeException
		 * @throws BadPaddingException
		 */
		public byte[] Encrytor(String str) throws InvalidKeyException,
				IllegalBlockSizeException, BadPaddingException {
			// 根據金鑰，對Cipher物件進行初始化，ENCRYPT_MODE表示加密模式
			c.init(Cipher.ENCRYPT_MODE, deskey);
			byte[] src = str.getBytes();
			// 加密，結果儲存進cipherByte
			cipherByte = c.doFinal(src);
			return cipherByte;
		}

		/**
		 * 對字串解密
		 * 
		 * @param buff
		 * @return
		 * @throws InvalidKeyException
		 * @throws IllegalBlockSizeException
		 * @throws BadPaddingException
		 */
		public byte[] Decryptor(byte[] buff) throws InvalidKeyException,
				IllegalBlockSizeException, BadPaddingException {
			// 根據金鑰，對Cipher物件進行初始化，DECRYPT_MODE表示加密模式
			c.init(Cipher.DECRYPT_MODE, deskey);
			cipherByte = c.doFinal(buff);
			return cipherByte;
		}

	}


