class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :url,  presence: true, uniqueness: true

  def generate_url
    
  end
end
