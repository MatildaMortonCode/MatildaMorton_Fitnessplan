require 'mail'

def send_email
puts "enter email"
email = gets.chomp


mail = Mail.new do
    from     'me@test.lindsaar.net'
    to       email
    subject  'Here is the image you wanted'
    body     'body text'
  end
  
  mail.deliver!

end