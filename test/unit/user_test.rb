# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  civilite               :string(255)
#  nom                    :string(255)
#  prenom                 :string(255)
#  grade                  :string(255)
#  adresse_familiale      :string(255)
#  adresse_administrative :string(255)
#  indice_majore          :integer
#  equipe                 :string(255)
#  departement            :string(255)
#  rib_valide             :boolean
#  nom_banque             :string(255)
#  passwd                 :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
