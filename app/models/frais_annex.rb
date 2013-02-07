# == Schema Information
#
# Table name: frais_annexes
#
#  id              :integer          not null, primary key
#  natureDepense   :string(255)
#  depense         :integer
#  nbJustificatifs :integer
#  rembourse       :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class FraisAnnex < ActiveRecord::Base
  attr_accessible :depense, :natureDepense, :nbJustificatifs, :rembourse
end
