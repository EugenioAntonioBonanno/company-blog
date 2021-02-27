class Post < ActiveResource::Base
  self.site = 'http://localhost:4000'
  self.include_format_in_path = false
  
end
