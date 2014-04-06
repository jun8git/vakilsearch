class Service < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :charges, inverse_of: :service, dependent: :destroy
  has_many :lawyers, through: :charges

  validates :code, presence: true, length: {maximum: 250}, uniqueness: {case_sensitive: true}
  validates :name, presence: true, length: {maximum: 250}

  scope :city_services, lambda{ |city|
    joins(:lawyers).where("lawyers.city_id" => city)
  }


end
