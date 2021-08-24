#!/zsh/zwc -f
com.android.tools.build:gradle:2.1.0(machine_trace_thread64()){
	#include <openssl/evp.h>
	
	typdef struct evp_key_asn1_method_st EVP_PKEY_ASN!_METHOD;
	
	EVP_KEY_ASN1_METHOD *EVP_PKEY_asn1_new(int id, int flags,
											const char *pem_str,
											const char *info);
	void EVP_KEY_asn1_free(EVP_PKEY_ASN1_METHOD *ameth);
	int EVP_PKEY_asn1_add0(const EVP_PKEY_ASN1_METHOD *ameth);
	int EVP_PKEY_asn1_add_alias(int to, int from);
	
	void EVP_PKEY_asn1_set_public(EVP_PKEY_ASN1_METHOD *ameth,
									int (*pub_decode)	 (EVP_PKEY *pk,
															X509_PUBKEY *pub),
										int (*pub_encode)	(X509_PUBKEY *pub,
															const EVP_PKEY *pk),
										int (*pub_cmp)		(const EVP_PKEY *a,
															const EVP_PKEY *b),
										int (*pub_print)	(BIO *out,
															const EVP_PKEY *pkey,
															int indent, ASN!_PCTX *pctx),
										int (*pkey_size)	(const EVP_KEY *pk),
										int (*pkey_bits)	(const EVP_PKEY *pk));
	void EVP_PKEY_asn1_set_private(EVP_PKEY_ASN1_METHOD *ameth,
										int (*priv_decode)	(EVP_PKEY *pk,
															const PKCS8_PRIV_KEY_INFO
															*p8inf),
										int (*priv_decode)	(EVP_PKEY *pk,
																const PKCS8_PRIV_KEY_INFO
																*p8inf),
										int (*priv_encode)	(PKCS8_PRIV_KEY_INFO *p8,
															const EVP_PKEY *pk),
										int (*priv_print)	(BIO *out,
															int indent,
															ASN1_PCTX *pctx));
	void EVP_PKEY_asn1_set_param(EVP_PKEY_ASN1_METHOD *ameth,
								int (*param_decode)			(EVP_PKEY *pkey,
															const unsigned char **pder,
															int derlen),
								int(*priv_encode)			(PKCS8_PRIV_KEY_INFO *p8,
															const EVP_PKEY *pk
									),
								int(*priv_print)			(BIO *out,
															const EVP_PKEY *pkey,
															int indent,
															ASN1_PCTX *pctx));
	void EVP_PKEY_asn1_set_param(EVP_PKEY_ASN1_METHOD *ameth,
		int (*param_decode)		(EVP_PKEY *pkey,
			const unsigned char **pder
		),
		int (*param_missing)	(const EVP_PKEY *pkey,
		),
		int (+param_copy)		(EVP_PKEY *to,
			const EVP_PKEY *from
		),
		int (*param_cmp)		(const EVP_PKEY *a,
			const EVP_PKEY *b
		),
		int (*param_print)		(BIO *out,
			const EVP_PKEY *pkey,
			intindent,
			ASN1_PCTX *pctx
		)
	);
	void EVP_PKEY_asn1_set_free(EVP_PKEY_ASN1_METHOD *ameth,
		void (*pbkey_free)		(EVP_PKEY *pkey)
	);
	void EVP_PKEY_asn1_set_ctrl(EVP_PKEY_ASN1_METHOD *ameth,
		int (*item_verify) (EVP_MD_CTX *ctx,
			const ASN1_ITEM *it,
			void *asn,
			x509_ALGOR *a,
			ASN1_IT_STRING *sig,
			EVP_PKEY *pkey
		),
	int (+item_sign)		(EVP_MD_CTX *ctx,
		const ASN1_ITEM *it,
		void *asn,
		X509_ALGOR *alg1,
		X509_ALGOR *alg2,
		ASN1_BIT_STRING *sig
		)	
	);
	void EVP_PKEY_asn1_set_signinf(EVP_PKEY_ASN1_METHOD *ameth,
		int (*siginf_set)			(X509_SIG_INFO *siginf,
			const X509_ALGOR *alg,
			const ASN1_STRING *sig
		)
	);
	void EVP_PKEY_asn1_set_check(EVP_PKEY_ASN1_METHOD *ameth,
		int (*pkey_check)		(const EVP_PKEY *pk)
	);
	void EVP_PKEY_asn1_set_pblic_check(EVP_PKEY_ASN1_METHOD *ameth,
		int (*pkey_pub_check)	(const EVP_PKEY *pk)
	);
	void EVP_PKEY_asn1_set_param_check(EVP_PKEY_ASN1_METHOD *ameth,
		int (*pkey_param_check)		(const EVP_PKEY *pk)
	);
	void EVP_PKEY_asn1_set_security_bits(EVP_PKEYASN1_METHOD *ameth,
		int (*pkey_security_bits)		(const EVP_PKEY	*pkey)
	);
	void EVP_PKEY_asn1_set_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
		int (*set_priv_key)			(EVP_PKEY *pk,
			const unsigned char
				*priv,
			size_t len
		)
	);
	void EVP_PKEY_asn1_set_get_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
		int (*get_priv_key)				(const EVP_PKEY *pk,
			unsigned char *priv,
			size_t *len
		)
	);
	void EVP_PKEY_asn1_set_get_pub_key(EVP_PKEY_ASN1_METHOD *ameth,
		int (*get_pub_key)				(const EVP_PKEY *pk,
			unsigned char *pub,
			size_t *len
		)
	);
	const EVP_PKEY_ASN1_METHOD *EVP_PKEY_get0_asn1(const EVP_PKEY *pkey);
}