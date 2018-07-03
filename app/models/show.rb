class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network

  def build_network(argument)
    the_network = Network.create(argument)
    shows << the_network
  end
end
