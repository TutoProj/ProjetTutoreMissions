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

class Itineraire < ActiveRecord::Base
  attr_accessible :DateArriveeLieuMission, :DateHeureDepartLieuMission, :DateHeureDepartResidence, :DateHeureRetourResidence, :distance, :montant, :rembourse
end
