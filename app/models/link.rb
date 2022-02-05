# frozen_string_literal: true

class Link < ApplicationRecord
  validates :lookup_code, presence: true, uniqueness: true
  validates :original_url, format: { with: URI::regexp(%w[http https]) }, presence: true, uniqueness: true
end
