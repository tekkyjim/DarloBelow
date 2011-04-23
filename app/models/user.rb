class User
  include Mongoid::Document
  include Mongoid::Paranoia
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :name
  field :role, :default => "player" ,:type => String
  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  references_many :characters

  ROLES = %w[player helper admin]
  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

end
