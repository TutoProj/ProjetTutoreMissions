# -*- coding: utf-8 -*-
# == Schema Information
#
# Table name: missions
#
#  id                 :integer          not null, primary key
#  compteUser         :string(255)
#  NumConvention      :integer
#  destination        :string(255)
#  imputation         :string(255)
#  numMarche          :integer
#  frais              :boolean
#  permanant          :boolean
#  dateDepart         :date
#  dateRetour         :date
#  motifDeplacement   :string(255)
#  status             :string(255)
#  dateClotureMission :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Mission < ActiveRecord::Base
  attr_accessible :NumConvention, :compteUser, :dateClotureMission, :dateDepart, :dateRetour, :destination, :frais, :imputation, :motifDeplacement, :numMarche, :permanant, :status

  belongs_to :user

  has_many :frais_deplacements
  has_many :frais_repas
  has_many :frais_hebergements
  has_many :frais_annexes

  enumerate :status do 
    value :name => "Aucun"
    value :name => "Autorisé"
    value :name => "Remboursé"    
  end

  validates :dateClotureMission, :dateDepart, :dateRetour, :destination, :motifDeplacement, :status, :presence => true
end
