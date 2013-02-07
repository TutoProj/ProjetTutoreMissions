# == Schema Information
#
# Table name: itineraires
#
#  id                         :integer          not null, primary key
#  distance                   :integer
#  DateHeureDepartResidence   :date
#  DateArriveeLieuMission     :date
#  DateHeureDepartLieuMission :date
#  DateHeureRetourResidence   :string(255)
#  montant                    :integer
#  rembourse                  :boolean
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#

require 'test_helper'

class ItineraireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
