package org.owasp.org2.util.crypto
{
	//TODO: MD5 and SHA1 need AS3CORELIB, trying without to reduce footprint
	//import com.adobe.crypto.MD5;
	//import com.adobe.crypto.SHA1;
	import flash.utils.ByteArray;
	import mx.utils.SHA256;
	
	public final class OneWayHash
	{
		/**
		 * 
		 * Defines the constant which represents an SHA-256 hash 
		 * algorithm 
		 * 
		 */
		public static const CRYPTO_SHA256:String = "SHA-256";
		
		/**
		 * 
		 * Defines the constant which represents a US Secure 
		 * Hash Algorithm 1 (SHA1)
		 * 
		 */
		public static const CRYPTO_SHA1:String   = "SHA1";
		
		/**
		 * 
		 * Defines the constant which represents an MD5 Message
		 * Digest Algorithm
		 * 
		 */
		public static const CRYPTO_MD5:String    = "MD5";
			
			/**
			 * 
			 * Provides a utility operation from which a String is encrypted
			 * to the specified encryption
			 * 
			 * @example the following example demonstrates each Encryption
			 * type being performed on the same String
			 * 
			 * <listing version="3.0">
			 * 
			 * var password:String = "EricFeminella1234";
			 * 
			 * trace( Encryption.encrypt( password, Encryption.CRYPTO_MD5 ) );
			 * //0c7bf2ea20952abbc67e81c41bd19565
			 * 
			 * trace( Encryption.encrypt( password, Encryption.CRYPTO_SHA1 ) );
			 * //b40dee5836e7b407e6c7c398fc89e63c61dab760
			 * 
			 * trace( Encryption.encrypt( password, Encryption.CRYPTO_SHA256) );
			 * //0a88111852095cae045340ea1f0b279944b2a756a213d9b50107d7489771e159 
			 * 
			 * </listing>
			 * 
			 * @param  the String which is to be encrypted
			 * @param  a constant representing the required encryption
			 * @return an encrypted version of the source parameter
			 * 
			 */        
		public static function encrypt(source:String, type:String) : String
			{
				var encryption:String;
				
				switch ( type )
				{
					case CRYPTO_MD5:
						//encryption = MD5.hash( source );
						break;
					case CRYPTO_SHA1:
						//encryption = SHA1.hash( source );
						break;
					case CRYPTO_SHA256:
						var ba:ByteArray = new ByteArray();
						ba.writeUTFBytes( source )
						encryption = SHA256.computeDigest( ba );
						break; 
				}
				return encryption;
			}
		
	}
}