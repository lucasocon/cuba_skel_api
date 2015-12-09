require_relative '../../api'

class APIRoutes::V1 < Cuba
  define do
    res.headers['Content-Type'] = 'application/json'
    res.headers['X-Whoami']     = 'Mukti API'

    on get, 'ping' do
      json message: 'pong'
    end

    api_not_found!
  end
end
