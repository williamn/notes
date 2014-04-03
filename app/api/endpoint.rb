require 'notes'

module Endpoint
  class API < Grape::API
    mount Notes::APIv1
    mount Notes::APIv2
  end
end
