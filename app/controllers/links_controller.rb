# frozen_string_literal: true

class LinksController < ApplicationController
  protect_from_forgery
  before_action :find_link, only: %i[show]

  def index
    url = Link.all
    render status: :ok, json: { url: url }
  end

  def create
    hash_url = HashUrl.new(url_params[:original_url])
    @link = hash_url.generate_short_link
    if @link.save
      render status: :ok, json: { notice: "Url has be hashed!" }
    else
      render status: :unprocessable_entity, json: { error: @link.errors.full_messages }
    end
  end

  def show
    if @link.present?
      redirect_to "#{@link.original_url}"
      @link.destroy
    else
      render status: :unprocessable_entity, json: {
        error: "The link no longer exists. Please create a new link"
      }
    end
  end

  private

    def url_params
      params.require(:link).permit(:original_url)
    end

    def find_link
      @link = Link.find_by(lookup_code: params[:lookup_code])
    end
end
