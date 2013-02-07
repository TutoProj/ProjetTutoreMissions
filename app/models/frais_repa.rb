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

class FraisRepa < ActiveRecord::Base
  attr_accessible :NbJustificatifsRestauAdmin, :autresFraisRestaus, :montantAutres, :montantRestauAdmin, :nbJustificatifsAutres, :nbRepasDansRestaurantAdmin, :nbRepasGratuits, :rembourse, :rembourseRestauAdmin
end
