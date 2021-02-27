class Post < ActiveResource::Base
  self.site = 'http://localhost:4000'
  self.include_format_in_path = false

  protected

  def validate
    errors.add("title", "title is required") unless title.length > 5
  end
end
