class Post < ActiveResource::Base
  attr_accessor :name, :body

  self.site = 'http://localhost:4000'
  self.include_format_in_path = false
end
