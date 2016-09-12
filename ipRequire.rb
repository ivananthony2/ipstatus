
require 'gmail'
require 'open-uri'

old_ip = ""

loop do

  remote_ip = open('http://whatismyip.akamai.com').read

  if old_ip != remote_ip
    Gmail.connect(ENV["EMAIL"], ENV["PASSWORD"]) do |g|
      if g.logged_in?
        puts 'Gmail Logged ON'
      else
      	puts 'Something Happened'
      break
      end

      g.deliver do
        to ENV["EMAIL"]
        subject 'Your Remote IP Address Has Been Changed'
        text_part do
          body 'Your old address was #{old_ip}. Your new address is #{remote_ip}'
        end
      end
    end

    old_ip = remote_ip 
    
  end

  sleep(10)

end
