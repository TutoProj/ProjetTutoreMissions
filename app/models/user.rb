# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  civilite               :integer
#  nom                    :string(255)
#  prenom                 :string(255)
#  grade                  :string(255)
#  adresse_familiale      :string(255)
#  adresse_administrative :string(255)
#  indice_majore          :integer
#  equipe                 :string(255)
#  departement            :string(255)
#  rib_valide             :boolean
#  nom_banque             :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean
#  login                  :string(255)
#  crypted_password       :string(255)
#  password_salt          :string(255)
#  persistence_token      :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  attr_accessible :login, :adresse_administrative, :adresse_familiale, :civilite, :departement, :equipe, :grade, :indice_majore, :nom, :nom_banque, :password, :prenom, :rib_valide, :admin, :password_confirmation

  attr_accessor :password_confirmation

  enumerate :civilite do 
	value :name => "Mr"
	value :name => "Mme"
	value :name => "Mlle"
  end
  
  validates_presence_of :adresse_administrative, :adresse_familiale, :civilite, :departement, :equipe, :grade, :indice_majore, :nom, :nom_banque, :password, :prenom, :login

  has_many :missions
  

  has_many :frais_deplacements, :through => :missions
  has_many :frais_repas, :through => :missions
  has_many :frais_hebergements, :through => :missions
  has_many :frais_annexes, :through => :missions

end
