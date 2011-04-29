# config/initializers/markdown_smart.rb
module Haml::Filters::MarkdownSmart
  include Haml::Filters::Base

  def render(text)
    RDiscount.new(text, :smart).to_html
  end
end