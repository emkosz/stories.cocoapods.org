# -- General ------------------------------------------

ENV['DATABASE_URL'] ||= "postgres://localhost/trunk_cocoapods_org_#{ENV['RACK_ENV']}"

# -- Database ------------------------------------------

require 'sequel'
require 'pg'

DB = Sequel.connect(ENV['DATABASE_URL'])
DB.timezone = :utc
Sequel.extension :migration
