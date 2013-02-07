# == Schema Information
#
# Table name: frais_hebergements
#
#  id                    :integer          not null, primary key
#  nbNuiteeAvecFrais     :integer
#  nbJustificatifs       :integer
#  montant               :integer
#  rembourse             :boolean
#  logeDansAutreLogement :boolean
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class FraisHebergement < ActiveRecord::Base
  attr_accessible :logeDansAutreLogement, :montant, :nbJustificatifs, :nbNuiteeAvecFrais, :rembourse
end
