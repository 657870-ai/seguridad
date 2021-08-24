#!/zh/zwc -f

(/.mk){
	#include <openssl/dh.h>
	int DH_size(const DH *dh);						# obtiene Diffie-Hellman en bytes
	int DH_bits(const DH *dh);						# obtiene el numero de bits en la clave
	int DH_security_bits(const DH *hd);				# obtiene el numero de bits de seguridad
	
	dh=on
	dh->p=on
	
	dtrace -n 'syscall::read:entry /execname != "dtrace/{ @reads[execname, fds[arg0].fi_pathname] = count(); }'
	
}