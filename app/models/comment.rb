class Comment < ActiveResource::Base
  self.site = 'http://6449d9ab7479.ngrok.io/posts/:post_id'
  self.prefix = "/posts/:post_id/"
  self.include_format_in_path = false

  # belongs_to :post


end
