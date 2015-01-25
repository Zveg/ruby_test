require 'flickraw'
puts "test"
FlickRaw.api_key=ENV['FLICK_API_KEY']
FlickRaw.shared_secret=ENV['FLICK_SECRET']
puts "test"
flickr.access_token = ENV['TOKEN']

puts flickr.access_token

flickr.access_secret = ENV['SECRET']

login = flickr.test.login
puts "You are now authenticated as #{login.username}"

def get_hash(path)
  Digest::MD5.file(path).hexdigest
end

def upload(path)
resp =  flickr.upload_photo path
puts resp
end


upload(testPhoto)
