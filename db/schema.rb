# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130412125249) do

  create_table "Itineraires", :force => true do |t|
    t.integer  "distance"
    t.date     "DateHeureDepartResidence"
    t.date     "DateArriveeLieuMission"
    t.date     "DateHeureDepartLieuMission"
    t.date     "DateHeureRetourResidence",   :limit => 255
    t.integer  "montant"
    t.boolean  "rembourse"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "Missions", :force => true do |t|
    t.string   "compteUser"
    t.integer  "NumConvention"
    t.string   "destination"
    t.string   "imputation"
    t.integer  "numMarche"
    t.boolean  "frais"
    t.boolean  "permanant"
    t.date     "dateDepart"
    t.date     "dateRetour"
    t.string   "motifDeplacement"
    t.integer  "status",             :limit => 255
    t.date     "dateClotureMission"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.boolean  "etranger"
  end

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "frais_annexes", :force => true do |t|
    t.string   "natureDepense"
    t.integer  "depense"
    t.integer  "nbJustificatifs"
    t.boolean  "rembourse"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "frais_deplacements", :force => true do |t|
    t.boolean  "demandeAvance"
    t.boolean  "regularisationDAvance"
    t.boolean  "forfait"
    t.integer  "montant"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "frais_hebergements", :force => true do |t|
    t.integer  "nbNuiteeAvecFrais"
    t.integer  "nbJustificatifs"
    t.integer  "montant"
    t.boolean  "rembourse"
    t.boolean  "logeDansAutreLogement"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "frais_repas", :force => true do |t|
    t.integer  "nbRepasDansRestaurantAdmin"
    t.integer  "NbJustificatifsRestauAdmin"
    t.integer  "montantRestauAdmin"
    t.boolean  "rembourseRestauAdmin"
    t.boolean  "autresFraisRestaus"
    t.integer  "nbJustificatifsAutres"
    t.integer  "montantAutres"
    t.boolean  "rembourse"
    t.integer  "nbRepasGratuits"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "moyen_transports", :force => true do |t|
    t.boolean  "avion"
    t.boolean  "parkingAeroport"
    t.boolean  "train"
    t.boolean  "classe"
    t.boolean  "parkingGare"
    t.boolean  "reservation"
    t.boolean  "couchette"
    t.boolean  "wagonLit"
    t.boolean  "supplements"
    t.boolean  "taxi"
    t.boolean  "vehiculeLoue"
    t.boolean  "metro"
    t.boolean  "rer"
    t.boolean  "autobus"
    t.boolean  "tramway"
    t.boolean  "missionAvecTransport"
    t.boolean  "vehiculeAdmin"
    t.boolean  "fraisAutoroute"
    t.boolean  "parking"
    t.boolean  "vehiculePerso"
    t.boolean  "demandeAutorisationPonctuelleVehicule"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "civilite",               :limit => 255
    t.string   "nom"
    t.string   "prenom"
    t.string   "grade"
    t.string   "adresse_familiale"
    t.string   "adresse_administrative"
    t.integer  "indice_majore"
    t.string   "equipe"
    t.string   "departement"
    t.boolean  "rib_valide"
    t.string   "nom_banque"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.boolean  "admin",                                 :default => false
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",                    :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vehicule_persos", :force => true do |t|
    t.string   "numMineralogique"
    t.integer  "puissanceVehicule"
    t.date     "DateAutorisationAnnuelleDUtilisation"
    t.string   "departement"
    t.string   "academie"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

end
