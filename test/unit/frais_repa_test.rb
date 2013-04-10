# == Schema Information
#
# Table name: frais_repas
#
#  id                         :integer          not null, primary key
#  nbRepasDansRestaurantAdmin :integer
#  NbJustificatifsRestauAdmin :integer
#  montantRestauAdmin         :integer
#  rembourseRestauAdmin       :boolean
#  autresFraisRestaus         :boolean
#  nbJustificatifsAutres      :integer
#  montantAutres              :integer
#  rembourse                  :boolean
#  nbRepasGratuits            :integer
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

require 'test_helper'

class FraisRepaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
