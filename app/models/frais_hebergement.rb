class FraisHebergement < ActiveRecord::Base
  attr_accessible :logeDansAutreLogement, :montant, :nbJustificatifs, :nbNuiteeAvecFrais, :rembourse
end
