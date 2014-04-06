class Lawyer < ActiveRecord::Base
  # attr_accessible :title, :body
  extend FriendlyId
  friendly_id :code


  has_many :charges, inverse_of: :lawyer, dependent: :destroy
  has_many :services, through: :charges
  belongs_to :city, inverse_of: :lawyers, counter_cache: true


  validates :city, presence: true
  validates :code, presence: true, length: {maximum: 250}, uniqueness: {case_sensitive: true}
  validates :name, presence: true, length: {maximum: 250}
  validates :experience, presence: true
  validates :rating, presence: true
  validates :charges_count, presence: true


  def self.search_lawyers(city, service)
    joins(:services).where("services.id" => service, "lawyers.city_id" => city)
  end

end
