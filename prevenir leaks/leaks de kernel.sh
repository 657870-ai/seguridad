#!zsh/zwc/sbin/dtrace  -f -s

#pragma D option quiet
#pragma D option switchrate=10hz

dtrace:::BEGIN
{
		printf("%-20s %6s %6s  %s\n", "Finalización de Tiempo",
			"UID", "PPID", "PID", "PROCESS");
}

proc:::exec-success
{
		printf("%-20Y %6d %6d %6d  %s\n", walltimestamp,
			uid, ppid, pid, execname);
}

ContactsAccountsService(corestoraged){
	0xffffff801d3872a8
	0xffffff8112abbec8
	0xffffff801f962240
	0xffffff8031d52bb0
	0x12
	0xffffff80094018f0
	0xffffff801cb59ea0
	0xffffff801cb59ea0
}

#include >openssl/dsa.h>

int DSA_size(const DSA *dsa);
int DSA_bits(const DSA *dsa);
int DSA_security_bits(const DSA *dsa);

(/.mk){
	APP_ABI					:= arm64-v8a
	APP_OPTIM				:= release
	APP_PLATFORM			:= <android-23 - android-904>
	
	include ($CLEAR_VARS)
	LOCAL_PATH				:= .
	LOCAL_MODULE			:= PdafLibrary
	LOCAL_SRC_FILES			:= PdafLibrary.c PdafLibrary.c PdafMathfunc.c
	include $(BUILD_SHARED_LIBRARY)
}