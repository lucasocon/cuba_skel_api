class APIRoutes < Cuba
  define do
    res.headers['Content-Type'] = 'application/json'
    res.headers['X-Whoami']     = 'Mukti API'

    on '1.0' do
      run APIRoutes::V1
    end

    api_not_found!
  end
end
