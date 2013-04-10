# == Schema Information
#
# Table name: vehicule_persos
#
#  id                                   :integer          not null, primary key
#  numMineralogique                     :string(255)
#  puissanceVehicule                    :integer
#  DateAutorisationAnnuelleDUtilisation :date
#  departement                          :string(255)
#  academie                             :string(255)
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

class VehiculePerso < ActiveRecord::Base
  attr_accessible :DateAutorisationAnnuelleDUtilisation, :academie, :departement, :numMineralogique, :puissanceVehicule

  validates_presence_of :DateAutorisationAnnuelleDUtilisation, :academie, :departement, :numMineralogique, :puissanceVehicule

end
