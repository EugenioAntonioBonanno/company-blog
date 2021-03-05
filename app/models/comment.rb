class Comment < ActiveResource::Base
  self.site = 'http://localhost:4000/posts/:post_id'
  self.prefix = '/posts/:post_id/'
  self.include_format_in_path = false

  # VALIDATIONS #
  # Both server and client require name and body to be present

end
