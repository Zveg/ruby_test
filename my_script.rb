require 'flickraw'
=begin

login = flickr.test.login
puts "You are now authenticated as #{login.username}"
=end

def get_hash(path)
  Digest::MD5.file(path).hexdigest
end




class ImageUploader
  attr_accessor :flickr
  def initialize
      FlickRaw.api_key=ENV['FLICK_API_KEY']
      FlickRaw.shared_secret=ENV['FLICK_SECRET']
      flickr = FlickRaw::Flickr.new
      flickr.access_token = ENV['TOKEN']
      flickr.access_secret = ENV['SECRET']
      @flickr = flickr
  end

  def upload(path)
    flickr.upload_photo path
  end

end

puts ImageUploader.new.upload('/home/zveg/1.jpg')


