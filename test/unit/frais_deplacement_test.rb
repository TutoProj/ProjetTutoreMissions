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

require 'test_helper'

class FraisDeplacementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
