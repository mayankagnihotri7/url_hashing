# frozen_string_literal: true

require "rails_helper"

RSpec.describe LinksController, type: :controller do

  it "can shorten a link provided by the user" do
    url = "http://www.favoritewebsite.com/articles/how-to-cook"
    post :create, params: { link: { original_url: url } }
    link = assigns(:link)
    expect(link.valid?).to be(true)
    expect(link.lookup_code.length).to eql(7)
  end

end
