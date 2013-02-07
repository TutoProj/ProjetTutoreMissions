# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  civilite               :string(255)
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
#  passwd                 :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Civilites < ActiveEnum::Base
  value :name => "Mr"
  value :name => "Mme"
  value :name => "Mlle"
end

class User < ActiveRecord::Base
  attr_accessible :adresse_administrative, :adresse_familiale, :civilite, :departement, :equipe, :grade, :indice_majore, :nom, :nom_banque, :passwd, :prenom, :rib_valide

  enumerate :civilite, :with => Civilites
  
  validates_inclusion_of :civilite, :in => Civilites

  validates :adresse_administrative, :adresse_familiale, :civilite, :departement, :equipe, :grade, :indice_majore, :nom, :nom_banque, :passwd, :prenom, :presence => true

  validates :passwd, :confirmation => true

  


  
end
