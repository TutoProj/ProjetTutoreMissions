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

require 'test_helper'

class FraisHebergementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
