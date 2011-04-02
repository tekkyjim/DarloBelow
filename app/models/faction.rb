class Faction
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :greeting, :type => String
  references_many :characters, :inverse_of => :characters

end

