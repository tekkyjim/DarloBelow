class Adjective
  include Mongoid::Document

  validates_uniqueness_of :word

  field :word
  field :type
  field :bias, :default => "Positive"
end

