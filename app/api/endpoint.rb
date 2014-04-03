require 'v1/notes.rb'
require 'v2/notes.rb'

module Endpoint
  class API < Grape::API
    mount Notes::APIv1
    mount Notes::APIv2
  end
end
