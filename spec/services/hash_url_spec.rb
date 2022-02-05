# frozen_string_literal: true

require "rails_helper"

RSpec.describe HashUrl do

  it "shortens a given URL to a 7 character lookup code" do
    url = "http://www.favoritewebsite.com/articles/how-to-cook"

    hash_url = HashUrl.new(url)
    expect(hash_url.lookup_code.length).to eql(7)
  end

  it "gives each URL its own lookup code" do
    url = "http://www.favoritewebsite.com/articles/how-to-cook"

    hash_url = HashUrl.new(url)
    lookup_code = hash_url.lookup_code

    another_url = "http://www.favoritewebsite.com/articles/how-to-bake"

    another_hash_url = HashUrl.new(another_url)
    another_lookup_code = another_hash_url.lookup_code
    expect(another_lookup_code).not_to eql(lookup_code)
  end

  it "generates a  link record with a unique lookup code" do
    url = "http://www.favoritewebsite.com/articles/how-to-cook"

    hash_url = HashUrl.new(url)
    link = hash_url.generate_short_link
    expect(link.valid?).to be(true)

    link2 = hash_url.generate_short_link
    expect(link2.valid?).to be(true)
  end
end
