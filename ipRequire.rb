require 'open-uri'
remote_ip = open('http://whatismyip.akamai.com').read

old_ip == remote_ip

loop do
if remote_ip != remote_ip

new_ip == remote_ip

require 'gmail'

gmail = Gmail.connect('isaiahavanderpas@gmail.com', 'jQuerys1') do |gmail|
	 if gmail.logged_in? == true
	 	puts 'yay'
	 end

# ==>	 	gmail.inbox.count    print gmail.inbox.count(:unread)

gmail.deliver 	do
  to "isaiahavanderpas@gmail.com"
  subject "Your Remote IP Address Has Been Changed"
  text_part do
    body "Your old address was #{old_ip}. Your new address is #{new_ip}"
  			end
  				end
end
end

end