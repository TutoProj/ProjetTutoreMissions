class MoyenTransport < ActiveRecord::Base
  attr_accessible :autobus, :avion, :class, :couchette, :demandeAutorisationPonctuelleVehicule, :fraisAutoroute, :metro, :missionAvecTransport, :parking, :parkingAeroport, :parkingGare, :rer, :reservation, :supplements, :taxi, :train, :tramway, :vehiculeAdmin, :vehiculeLoue, :vehiculePerso, :wagonLit
end
