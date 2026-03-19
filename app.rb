require 'sinatra'

set :bind, '0.0.0.0'
set :port, (ENV['PORT'] || 3000).to_i

get '/' do
  '<h1>Hello from Apexweave!</h1><p>Your Ruby app is running.</p>'
end
