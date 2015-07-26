require "uri"
class Link < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true, format: { with: URI::regexp(%w(http https)) }
  validates :project, inclusion: { in: [true, false] }
end
