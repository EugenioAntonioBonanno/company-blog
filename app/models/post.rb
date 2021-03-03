class Post < ActiveResource::Base
  self.site = 'https://911e087aec31.ngrok.io'
  self.include_format_in_path = false

  # VALIDATIONS
  # Server has validations requiring title and body to be present.
  # Client side has validations requiring title to have a min length of 3, and body min length of 15

  class << self
    def ordered_posts
      all.sort_by(&:created_at).reverse
    end
  end
end
