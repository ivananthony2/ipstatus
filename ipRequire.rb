require 'gmail'
require 'open-uri'

old_ip = ""

#loop do

remote_ip = open('http://whatismyip.akamai.com').read

new_ip = remote_ip
	
		if old_ip != remote_ip
	

	gmail = Gmail.connect('isaiahavanderpas@gmail.com', ENV["PASSWORD"]) do |gmail|
	 if gmail.logged_in? == true
	 	puts 'Gmail Logged ON'
	 end


gmail.deliver 	do
  to "isaiahavanderpas@gmail.com"
  subject "Your Remote IP Address Has Been Changed"
  text_part do
    body "Your old address was #{old_ip}. Your new address is #{new_ip}"
  			end
  				end
old_ip = new_ip

  	sleep(3)

		
#end

end
	end