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

require 'test_helper'

class VehiculePersoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
