## To active this profile, run: sudo aa-enforce usr.bin.r

#include <tunables/global>

/usr/bin/R {
	#include <abstractions/base>
	#include <abstractions/nameservice>
	
	capability kill,
	capability net_bind_service,
	capability sys_tty_config,
	
	@{HOME}/ r,
	@{HOME}/R/ r,
	@{HOME}/R/** rw,
	@{HOME}/R/{i686,x86_64}-pc-linux-gnu-library/** mrwix,
	
	/bin/* rix,
	/etc/R/ r,
	/etc/R/* r,
	/etc/fonts/** mr,
	/etc/resolv.conf r,
	/etc/xml/* r,
	/tmp/** mrwix,
	/usr/bin/* rix,
	/usr/include/** r,       
	/usr/lib/gcc/** rix,		
	/usr/lib/R/bin/* rix,
	/usr/lib{,32,64}/** mr,
	/usr/lib{,32,64}/R/bin/exec/R rix,
	/usr/local/lib/R/** mr,
	/usr/local/share/** mr,
	/usr/share/** mr,
	/usr/share/ca-certificates/** r,
}