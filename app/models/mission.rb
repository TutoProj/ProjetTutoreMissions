# -*- coding: utf-8 -*-
class Status < ActiveEnum::Base
  value :name => "Aucun"
  value :name => "Autorisé"
  value :name => "Remboursé"
end

class Mission < ActiveRecord::Base
  attr_accessible :NumConvention, :compteUser, :dateClotureMission, :dateDepart, :dateRetour, :destination, :frais, :imputation, :motifDeplacement, :numMarche, :permanant, :status

  enumerate :status, :with => Status

  validates_inclusion_of :status, :in => Status

  validates :dateClotureMission, :dateDepart, :dateRetour, :destination, :frais, :motifDeplacement, :numMarche, :permanant, :status, :presence => true
end
