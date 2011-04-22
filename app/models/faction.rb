class Faction
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :greeting, :type => String
  field :long_description, :type => String
  field :tagcolour, :default => "black"
  field :roleplay_hints
  field :image
  references_many :characters, :inverse_of => :characters

end

