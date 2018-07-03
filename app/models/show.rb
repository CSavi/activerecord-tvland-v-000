class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(argument)
    the_network = Network.create(argument)
  end
end
