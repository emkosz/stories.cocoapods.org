require 'sinatra'
require 'sequel'

# hook up to the database
DB = Sequel.sqlite :database => "stories.cocoapods.org.db"
# DB = Sequel.postgres(:host=>'localhost', :user=>'user', :password=>'password',
#       :database=>'stories_db')

#create an items table (only if it doesn't exists)
DB.create_table? :items do
  primary_key :id
  String :title, :size => 512
  String :body, :text=>true
end

# create a dataset from the items table
items = DB[items]

get '/' do
  'hello world'
end

get '/user' do
  'hello emma'
end
