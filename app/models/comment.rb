class Comment < ActiveResource::Base
  self.site = 'https://57a69edbcaa3.ngrok.io/posts/:post_id'
  self.prefix = '/posts/:post_id/'
  self.include_format_in_path = false

  # VALIDATIONS #
  # Both server and client require name and body to be present
end
