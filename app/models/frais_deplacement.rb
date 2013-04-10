# == Schema Information
#
# Table name: frais_deplacements
#
#  id                    :integer          not null, primary key
#  demandeAvance         :boolean
#  regularisationDAvance :boolean
#  forfait               :boolean
#  montant               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class FraisDeplacement < ActiveRecord::Base
  attr_accessible :demandeAvance, :forfait, :montant, :regularisationDAvance

  belongs_to :mission

  validates_presence_of :montant

end
