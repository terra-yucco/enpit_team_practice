ENV['RACK_ENV'] = 'test'

require './top'
require 'minitest/autorun'
require 'rack/test'

class TopTest <  Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_responses_ok
    get '/'
    assert last_response.ok?
  end
end
