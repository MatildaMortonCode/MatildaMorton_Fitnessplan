require 'mail'

def send_email
puts "Thanks for interacting with our program, to recieve out guide to understanding how food and lifestyle help your mental health, emter your email below"
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