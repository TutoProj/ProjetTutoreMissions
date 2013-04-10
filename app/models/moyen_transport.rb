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

class MoyenTransport < ActiveRecord::Base
	attr_accessible :autobus, :avion, :classe, :couchette, :demandeAutorisationPonctuelleVehicule, :fraisAutoroute, :metro, :missionAvecTransport, :parking, :parkingAeroport, :parkingGare, :rer, :reservation, :supplements, :taxi, :train, :tramway, :vehiculeAdmin, :vehiculeLoue, :vehiculePerso, :wagonLit

	belongs_to :mission

	validates_presence_of :avion, :if => :should_validate_avion?

	validates_presence_of :train, :if => :should_validate_train?

	validates_presence_of :vehiculeAdmin, :if => :should_validate_vehicule_admin?

	validates_presence_of :vehiculePerso, :if => :should_validate_vehicule_perso?
 
	def should_validate_avion?
		parkingAeroport == true
	end

	def should_validate_train? 
		classe == true || reservation == true || couchette == true || wagonLit == true || supplements == true || parkingGare == true
	end

	def should_validate_vehicule?
		fraisAutoroute == true || parking == true
	end

	def should_validate_vehicule_perso?
		(should_validate_vehicule? && vehiculeAdmin == false) || demandeAutorisationPonctuelleVehicule == true 
	end

	def should_validate_vehicule_admin?
		(should_validate_vehicule? && vehiculePerso == false)
	end
	
end
