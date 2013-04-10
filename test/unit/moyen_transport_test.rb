# == Schema Information
#
# Table name: moyen_transports
#
#  id                                    :integer          not null, primary key
#  avion                                 :boolean
#  parkingAeroport                       :boolean
#  train                                 :boolean
#  classe                                :boolean
#  parkingGare                           :boolean
#  reservation                           :boolean
#  couchette                             :boolean
#  wagonLit                              :boolean
#  supplements                           :boolean
#  taxi                                  :boolean
#  vehiculeLoue                          :boolean
#  metro                                 :boolean
#  rer                                   :boolean
#  autobus                               :boolean
#  tramway                               :boolean
#  missionAvecTransport                  :boolean
#  vehiculeAdmin                         :boolean
#  fraisAutoroute                        :boolean
#  parking                               :boolean
#  vehiculePerso                         :boolean
#  demandeAutorisationPonctuelleVehicule :boolean
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#

require 'test_helper'

class MoyenTransportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
