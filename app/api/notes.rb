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

module Notes
  class APIv2 < Grape::API
    version 'v2', using: :accept_version_header
    format :json

    resource :notes do
      get do
        { data: Note.all }
      end
    end
  end
end
