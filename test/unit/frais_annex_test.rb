# == Schema Information
#
# Table name: frais_annexes
#
#  id              :integer          not null, primary key
#  natureDepense   :string(255)
#  depense         :integer
#  nbJustificatifs :integer
#  rembourse       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class FraisAnnexTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
