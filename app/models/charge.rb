class Charge < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :lawyer, inverse_of: :charges, counter_cache: true
  belongs_to :service, inverse_of: :charges


  validates :lawyer, presence: true
  validates :service, presence: true
  validates :cost, presence: true
  validates :lawyer_id, uniqueness: {scope: :service_id}

end
