DisqusRails.setup do |config|
  config::SHORT_NAME = ENV["DISQUS_SHORT_NAME"]
  config::SECRET_KEY = "" #leave blank if not used
  config::PUBLIC_KEY = "" #leave blank if not used
  config::ACCESS_TOKEN = "" #you got it, right? ;-)
end