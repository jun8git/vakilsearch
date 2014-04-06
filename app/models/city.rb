class City < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :lawyers, inverse_of: :city

  validates :name, presence: true, length: {maximum: 250}
  validates :lawyers_count, presence: true

end
