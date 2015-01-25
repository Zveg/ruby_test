require 'flickraw'

FlickRaw.api_key=ENV['FLICK_API_KEY']
FlickRaw.shared_secret=ENV['FLICK_SECRET']

flickr.access_token = ENV['TOKEN']
flickr.access_secret = ENV['SECRET']


def get_hash(path)
  Digest::MD5.file(path).hexdigest
end
