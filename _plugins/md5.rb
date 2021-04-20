require 'tzinfo'

module Jekyll
  module Md5
    def md5(string)
      Digest::MD5.hexdigest(string)
    end
  end
end

Liquid::Template.register_filter(Jekyll::Md5)
