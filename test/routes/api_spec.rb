require File.expand_path '../../helper.rb', __FILE__

describe 'Mukti API' do
  describe 'v1.0' do
    it 'should successfully return a pong' do
      get '/api/1.0/ping'
      last_response.body.must_include 'pong'
    end
  end
end
