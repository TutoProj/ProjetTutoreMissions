# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.create(:civilite => 1, :nom => 'Margottin', :prenom => 'Alexis', :grade => 'Chef design', :adresse_familiale => 'AdresseFamilleTest', :adresse_administrative => 'AdresseAdminTest', :indice_majore => 4, :equipe => 'Design', :departement => 'Informatique', :rib_valide => 'TRUE', :nom_banque => 'SocieteGenerale', :admin => 'TRUE', :email => 'alexis@margottin.fr', :password => 'azertyuiop', :password_confirmation => 'azertyuiop') 

User.create(:civilite => 1, :nom => 'Miranda', :prenom => 'Guillaume', :grade => 'Grand Shaman', :adresse_familiale => 'AdresseFamilleTest', :adresse_administrative => 'AdresseAdminTest', :indice_majore => 4, :equipe => 'Invocation Rails', :departement => 'Informatique', :rib_valide => 'TRUE', :nom_banque => 'SocieteGenerale', :admin => 'FALSE', :email => 'guillaume@miranda.fr', :password => 'azertyuiop', :password_confirmation => 'azertyuiop') 
