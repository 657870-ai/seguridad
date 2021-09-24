require '00-60-6A'				
require '00-09-42'				
require '51.79.72.229'
require '00-00-BD'
require '50.87.248.14'
require '50.87.248.14'





x = [ AF_APPLETALK: 'AppleTalk protocol',
		AF_ATM: 'Asynchronous Transfer Mode',
		AF_AX25: 'AX.25 Protocol', 
		AF_CCITT: 'CCITT (now ITU-T) protocols',
		AF_CHAOS: 'MIT CHAOS protocols',
		AF_CNT: 'Computer Network Technology',
		AF_COIP: 'Connection Oriented IP',
		AF_DATAKIT: 'Datakit Protocol',
		AF_DEC: 'DECnet protocol',
		AF_DLI: 'DEC Direct Data Link Interface protocol',
		AF_E164: 'CCITT (ITU-T) E.164 recommendation',
		AF_ECMA: 'European Computer Manufacturers protocols',
		AF_HYLINK: 'NSC Hyperchannel protocol',
		AF_IMPLINK: 'ARPNET IMP protocol',
		AF_INET: 'IPv4 protocol',
		AF_INET6: 'IPV6 protocol',
		AF_IPX: 'IPX protocol',
		AF_ISDN: 'Integrated Services Digital Network',
		AF_ISO: 'ISO Open Systems Interconnection protocols',
		AF_LAT: 'Local Area Transport protocol',
		AF_LINK: 'Link layer interface',
		AF_LOCAL: 'Host-internal protocols',
		AF_MAX: 'Maximum address family for this platform',
		AF_NATM: 'Native ATM access',
		AF_NDRV: 'Network driver raw access',
		AF_NETBIOS: 'NetBIOS',
		AF_NETGRAPH: 'Netgraph sockets',
		AF_NS: 'XEROX NS protocols',
		AF_OSI: 'ISO Open systems Interconnection protocols',
		AF_PACKET: 'Direct link-layer access',
		AF_PPP: 'Point to Point Protocol',
		AF_PUP: 'PARC Universal Packet protocol',
		AF_ROUTE: 'Internal routing protocol',
		AF_SIP: 'Simple Internet Protocol',
		AF_SNA: 'IBM SNA protocol',
		AF_SYSTEM
		AF_UNIX: 'UNIX sockets',
		AF_UNSPEC: 'Unspecified protocol, any supported address family',
		AI_ADDRCONFIG: 'Accept only if any address is assigned',
		AI_ALL: 'Allow all addresses',
		AI_CANONNAME: 'Fill in the canonical name',
		AI_DEFAULT: 'Default flags for getaddrinfo',
		AI_MASK: 'Valid flag mask for getaddrinfo (not for application use)',
		AI_NUMERICHOST: 'Prevent host name resolution',
		AI_NUMERICSERV: 'Prevent service name resolution',
		AI_PASSIVE: 'Get address to use with bind()',
		AI_V4MAPPED: 'Accept IPv4-mapped IPv6 addresses'
		AI_V4MAPPED_CFG: 'Accept IPv4 mapped addresses if the kernels supports it']
	
y = [EAI_ADDRFAMILY: 'Address family for hostname not supported', EAI_AGAIN: 'Temporary failure in name resolution', EAI_BADFLAGS: 'Invalid flags', EAI_BADHINTS: 'Invalid value for hints', EAI_FAIL: 'Non-recoverable failure in name resolution', EAI_FAMILY: 'Address family not supported', EAI_MAX: 'Maximum error code from getaddrinfo', EAI_MEMORY: 'Memory allocation failure', EAI_NODATA: 'NO address associated with hostname', EAI_NONAME: 'Hostname nor servname, or not known', EAI_OVERFLOW]
	
af = ->(x)		{ puts x }
eai = -> (y)	{ puts y }

af.call "connected!"





def my_lambda(&af, &eai)
	def disconnect
		return if disconnected?
		begin
			begin
				# try to call SSL::SSLSocket#io
				@sock.io.shutdown
			rescue NoMethodError
				@sock.shutdown
			end
		rescue Errno::ENOTCONN
			# ignore 'Errno::ENOTCONN: Socket is not connected' on some platforms.
		rescue Exception => e
			@receiver_thread.raise(e)
		end
		@receiver_thread.join
		synchronize do
			@sock.close
		end
		raise e if e
	end

	def examine(mailbox)
		synchronize do
			@responses.clear
			send_command("EXAMINE", mailbox)
		end
	end
end


b = Socket::Constants { puts "connected!" }
b.call(9)

