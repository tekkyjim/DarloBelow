class Character
  include Mongoid::Document
  include Mongoid::Paranoia
  include Mongoid::Versioning
  include Mongoid::Timestamps
  include Mongoid::Taggable
  max_versions 5
  field :name, :type => String
  field :description, :type => String
  field :long_description, :type => String
  field :npc, :type => Boolean, :default => false
  field :gender
  field :roleplay_hints
  field :max_adjectives, :type => Integer, :default => 5
  field :played_by, :default => "No one yet"
  validates_presence_of :name
  referenced_in :user
  referenced_in :faction
end