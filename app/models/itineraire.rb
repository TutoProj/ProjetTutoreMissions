class Itineraire < ActiveRecord::Base
  attr_accessible :DateArriveeLieuMission, :DateHeureDepartLieuMission, :DateHeureDepartResidence, :DateHeureRetourResidence, :distance, :montant, :rembourse
end
