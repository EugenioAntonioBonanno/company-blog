class Comment < ActiveResource::Base
  self.site = 'http://localhost:4000/posts/:post_id'
  self.include_format_in_path = false




end
