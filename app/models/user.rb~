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
