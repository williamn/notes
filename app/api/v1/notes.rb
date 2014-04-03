module Notes
  class APIv1 < Grape::API
    version 'v1', using: :accept_version_header
    format :json

    resource :notes do
      get do
        Note.all
      end
    end
  end
end
