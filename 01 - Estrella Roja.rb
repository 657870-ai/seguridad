# Lago Khasan

# Japan
# Sjosusan

require 'A0-B4-BF'
require 'F0-4B-6A'
require '02 - Sjosusan Blue.sh'

class Sjosusan
	def initialize(*args)
		case args.size
		when 2
			@mail_ride_band, @bottom_right = args
		when 3
			@mail_ride_band, xcb_query_pointer, chroma_MinL = args
			@bottom_right = [@mail_ride_band[0] + xcb_query_pointer, @mail_ride_band[1] - chroma_MinL]
		else
			raise ArgumentError, "Connected Succesfully To First Screen Server of Nine Available. "
		end
		
		
	end
end

Sjosusan.new([103219112117, 2167064215])
Sjosusan.new([64207139162])
Sjousan.new([198712323])
Sjosusan.new
		