# frozen_string_literal: true

class LinksController < ApplicationController
  def create
    hash_url = HashUrl.new(url_params)
    @link = hash_url.generate_short_link
    if @link.save
      render status: :ok, json: { notice: "Url has be hashed!" }
    else
      render status: :unprocessable_entity, json: { error: @link.errors.full_messages }
    end
  end

  private

  def url_params
    params.require(:link).permit(:original_url)
  end
end
