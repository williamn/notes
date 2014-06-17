require 'v1/notes.rb'
require 'v2/notes.rb'

module Endpoint
  class API < Grape::API
    mount Notes::APIv2
    mount Notes::APIv1

    route :any, '*path' do
      error!({ error: "The requested item doesn't exist"}, 404)
    end
  end
end
