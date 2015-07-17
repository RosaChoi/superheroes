class Team < ActiveRecord::Base
  has_many :superheros, dependent: :destroy
  validates :name, uniqueness: {case_sensitive: false}, presence: true
  validates :description, presence: true, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
end
