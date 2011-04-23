class Character
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::Versioning
  field :name, :type => String
  field :description, :type => String
  field :long_description, :type => String
  field :npc, :type => Boolean, :default => false
  field :adjectives
  field :gender
  field :roleplay_hints
  validates_presence_of :name
  referenced_in :user
  referenced_in :faction
  max_versions 5
end