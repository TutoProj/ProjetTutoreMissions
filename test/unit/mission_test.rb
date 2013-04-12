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
#  status             :integer
#  dateClotureMission :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class MissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
