# frozen_string_literal: true

class Link < ApplicationRecord
  validates :lookup_code, presence: true
  validates :original_url, format: { with: URI::regexp(%w[http https]) }, presence: true
  validates :lookup_code, uniqueness: true
end
