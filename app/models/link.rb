# frozen_string_literal: true

class Link < ApplicationRecord
  validates :lookup_code, presence: true, uniqueness: true
  validates :original_url, presence: true, uniqueness: true
  validate :original_url_format

  private

    def original_url_format
      uri = URI.parse(original_url || "")
      if uri.host.nil?
        errors.add(:original_url, "invalid URL format!")
      end
    end
end
