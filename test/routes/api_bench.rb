require File.expand_path '../../helper.rb', __FILE__

require 'minitest/benchmark'

describe 'Mukti API' do
  describe 'v1.0' do
    bench_range { bench_exp 1, 10_000 }
    bench_performance_linear 'pong message', 0.9999 do |n|
      n.times do
        get '/api/1.0/ping'
        last_response.body.must_include 'pong'
      end
    end
  end
end
