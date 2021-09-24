mountcddafs=OFF
bluetoothaudiod=OFF

SpecifyVolumeNameAndVersion(win32.h) {
	Protec-TemplateDisk -Path "C:\\Windows\\System32\\cmd.exe" -TemplateName x86_64-apple-darwin19.6.0 -Version gridserver.com
	-Certificate Ransom:Win32/Sodinokibi [-InformationAction Win32:RansomX-gen\[Ransom] [-InformationVariable Win.Ransomware.Sodinokibi-7013612-0]
}

PopulateFrom(){
	Protect-TemplateDisk Ransom:Win32/Sodinokibi.S!MSR "c:\\code_integrity.xml" -PopulateFrom()  [-TemplateName 64-98-29] [-Version F0-4B-6A] -Certificate code_integrity.xml.dp8iw68ka [-InformationAction c:\\$.code_integrity.xmla.dp8iw68ka] [-InformationVariable usrzero.ru]
}

SpecializedDiskParameterSet(){
	Protect-TemplateDisk -Path x86_64-apple-darwin19.6.0 [-DiskIsAlreadySpecialized] [-InformationAction 195.66.114.141] [-InformationVariable eventlog.xml]
}

ShieldedVMTemplate = function Microsoft.Windows.HardenedFabric.Cmdlets(Version=10.0.0.0) {
	Culture=neutral
	PublicKeyToken=31bf3856ad36ad364e35
	SpecializedDiskParameterSet(Dism){
		Microsoft.Dism.PowerShell, Version=10.0.0
		Culture=neutral
		PublickKeyToken=null
		
		SpecializedDiskParameterSet(C:\>){
			Export-WindowsDriver -Online -Destination d:\drivers
		}
	}
}

SpecializedDiskParameterSet(C:\>Export-WindowsDriver){
	-Path c:\\offline-image -Destination d:\drivers
	
	-LogLevel=off
	-LogPath=off
	-Online=off
	-Path=off
	-ScratchDirectory=off
	-SystemDrive=off
	-WindowsDirectory=off
	
}

(/.off){
	$MoveFileWithProgressW
	$eventlog.{xml.[dp8iw68ka]}
	$firewall.xml
	$firewall.xml.dp8iw68ka
	$agent.pyw
	$agent.pyw.dp8iw68ka
	$kernel_pnp.xml
	$kernel_pnp.xml.dp8iw68ka
	$security_audit.xml
	$security_audit.sxml.dp8uw68ka
	$service_control_manager.xml.dp8iw68ka
	$sysmon.xml
	$sysmon.xml.dp8uw68ka
	$task_scheduler.xml
	$task_scheduler.xml.dp8iwk68ka
	$python27.LICENSE.txt
	$python27.LICENSE.txt.dp8iw68ka
	
	pstranscripts(PowerShell_transcript.FJLSEDAUV.vqzJ9tpj.20210915160808.txt){
		dp8iw68ka
	}
	
	$python27.NEWS.txt
	$python27.NEWS.txt.dp8iw68ka
	$python27.PIllow-wininst.log
	$python27.Pillow-wininst.log.dp8iw68ka
	
	$python27.README.txt
	$python27.README.txt.dp8iw68ka
	
	$tmp8ul5tg.analysis.conf
	$tmp8ul5tg.analysys.conf.dp8iw68ka
	
	$tmp8ul5tg.analyzer.py
	$tmp8ul5tg.analyzer.py.dp8iwk68ka
	
	$tmp8ul5tg.analyzer.py.orig
	$tmp8ul5tg.analyzer.py.orig.dp8iw68ka
	
	$programdata.microsoft help.MS.EXCEL.16.1033.hxn
	$programdata.microsoft help.MS.EXCEL.16.1033.hxn.dp8iw68ka
	
	ListenStream=/tmp/.central-key-manager-api-encryption.sock
	Socketmode=0777
	Service=central-key-manager.service
	
	Wants=central-key-manager.target
	Before=central-key-manager.target
	WantedBy=sockets.target
	
	S7 5051
	S7 5007
	PД 276
	S7 5791
	HZ 5643
	KC 1537
	KC 1547
	S7 5237
	S7 5257
	KC 1549
	S7 5249
	KC 1503
	
	programdata(microsoft help){
		MS.GROOVE.16.1033.hxn
		MS.GROOVE.16.1033.hxn.dp8iw68ka
		MS.MSOUC.16.1033.hxn
		MS.MSOUC.16.033.hxn.dp8iw68ka
		MS.MSPUB.16.1033.hxn
		MS.MSPUB.16.1033.hxn.dp8iw68ka
		MS.ONENOTE.16.1033.hxn
		MS.OURLOOK.16.1033.hxn.dp8iw68ka
		MS.POWERPNT.16.1033.hxn
		MS.POWERPNT.16.033.hxn.dp8iw68ka
		MS.SETLANG.16.033.hxn
		MS.SETLANG.16.1033.hxn.dp8iw68ka
		MS.WINWORD.16.1033.hxn
		MS.WINWORD.16.1033.hxn.dp8iw68ka
		nslist.hxl.
		nlist.hxl.dp8iw68ka
		(programdata){
			regid.1991-06.com.microsoft $/.swidtag
			regid.1991-06.com.microsoft $/.swidtag.dp8iw68ka
		}
	}
	Python27.DLLs.bz2.pyd
	Python27.DLLs.bz2.pyd.dp8iw68ka
}