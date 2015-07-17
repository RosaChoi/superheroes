class Superhero < ActiveRecord::Base
  belongs_to :team

  validates :name, :bio, :image_url, presence: true

end
