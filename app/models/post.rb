class Post < ActiveResource::Base
  self.site = 'http://6449d9ab7479.ngrok.io'
  self.include_format_in_path = false

  has_many :comments
  # VALIDATIONS #
  # Server has validations requiring title and body to be present.
  # Client side has validations requiring title to have a min length of 3, and body min length of 15

  class << self
    def ordered_posts
      all.sort_by(&:created_at).reverse
    end
  end
end
