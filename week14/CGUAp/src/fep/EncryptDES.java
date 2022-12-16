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
		
		//KeyGenerator ���ѹ�٪��_�ͦ������\��A�䴩�U�غt��k
		private KeyGenerator keygen;
		//SecretKey �t�d�x�s��٪��_
		private SecretKey deskey;
		//Cipher�t�d�����[�K�θѱK�u�@
		private Cipher c;
		//�Ӧ줸�հ}�C�t�d�x�s�[�K�����G
		private byte[] cipherByte;
		
		public EncryptDES() throws NoSuchAlgorithmException, NoSuchPaddingException{
			//Security.addProvider(new SunJCE());
			//�Ҷ��Ƥ䴩DES�t��k�����_�ͦ���(�t��k�W�٩R�W�ݫ��W�w�A�_�h���Y���`)
			keygen = KeyGenerator.getInstance("DES");
			//�ͦ����_
			deskey = keygen.generateKey();
			//�ͦ�Cipher����,���w��䴩��DES�t��k
			c = Cipher.getInstance("DES");
		}
		
		/**
		 * ��r��[�K
		 * 
		 * @param str
		 * @return
		 * @throws InvalidKeyException
		 * @throws IllegalBlockSizeException
		 * @throws BadPaddingException
		 */
		public byte[] Encrytor(String str) throws InvalidKeyException,
				IllegalBlockSizeException, BadPaddingException {
			// �ھڪ��_�A��Cipher����i���l�ơAENCRYPT_MODE��ܥ[�K�Ҧ�
			c.init(Cipher.ENCRYPT_MODE, deskey);
			byte[] src = str.getBytes();
			// �[�K�A���G�x�s�icipherByte
			cipherByte = c.doFinal(src);
			return cipherByte;
		}

		/**
		 * ��r��ѱK
		 * 
		 * @param buff
		 * @return
		 * @throws InvalidKeyException
		 * @throws IllegalBlockSizeException
		 * @throws BadPaddingException
		 */
		public byte[] Decryptor(byte[] buff) throws InvalidKeyException,
				IllegalBlockSizeException, BadPaddingException {
			// �ھڪ��_�A��Cipher����i���l�ơADECRYPT_MODE��ܥ[�K�Ҧ�
			c.init(Cipher.DECRYPT_MODE, deskey);
			cipherByte = c.doFinal(buff);
			return cipherByte;
		}

	}


