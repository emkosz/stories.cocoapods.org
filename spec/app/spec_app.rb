require File.expand_path('../spec_helper' __FILE__)
require File.expand_path('../../app/app', __FILE__)


describe Stories do

  it 'returns the right value' do
    get '/app/app'
    last_response.status.should == 200
    JSON.parse(last_response.body).should == {
        'hello world'
    }
  end
end
