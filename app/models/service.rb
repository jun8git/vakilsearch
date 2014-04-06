class Service < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :charges, inverse_of: :service, dependent: :destroy

  validates :code, presence: true, length: {maximum: 250}, uniqueness: {case_sensitive: true}
  validates :name, presence: true, length: {maximum: 250}

end
