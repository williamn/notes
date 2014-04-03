module Endpoint
  class API < Grape::API
    format :json

    resource :notes do
      get do
        Note.all
      end
    end
  end
end