# frozen_string_literal: true

class HashUrl
  attr_reader :url, :link_model

  def initialize(url, link_model: Link)
    @url = url
    @link_model = link_model
  end

  def generate_short_link
    Link.create!(original_url: url, lookup_code: lookup_code)
  end
  
  def lookup_code
    loop do
      code = get_fresh_lookup_code
      break code unless link_model.exists?(lookup_code: code)
    end
  end

  private

  def get_fresh_lookup_code
    SecureRandom.alphanumeric(7)
  end
end