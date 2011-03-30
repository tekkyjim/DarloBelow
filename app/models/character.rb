class Character
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :long_description, :type => String
  field :npc, :type => Boolean, :default => false
  validates_presence_of :name
  referenced_in :user
end