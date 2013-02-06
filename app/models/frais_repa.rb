class FraisRepa < ActiveRecord::Base
  attr_accessible :NbJustificatifsRestauAdmin, :autresFraisRestaus, :montantAutres, :montantRestauAdmin, :nbJustificatifsAutres, :nbRepasDansRestaurantAdmin, :nbRepasGratuits, :rembourse, :rembourseRestauAdmin
end
