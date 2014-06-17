# Notes

Notes is an example of Grape app mounted on Rails.

## API documentation

http://docs.notes32.apiary.io

## Features

### Versioning

Notes using Accept-Version header strategy.

Clients should pass the desired version in HTTP `Accept-Version` header.

    $ curl -H "Accept-Version:v1" http://localhost:3000/api/notes
    

### Error handling

Notes uses conventional HTTP response codes to indicate success or failure of an API request.

Attribute `message` is returned for giving more details about the error.

  - 200 OK
  - 400 Bad Request
  - 401 Unauthorized
  - 404 Not Found
  - 500 Internal Server Error

### Pagination and partial response

TBA

### Multiple formats

TBA

### Handling exceptions

TBA

### Logging

TBA

### Authentication

TBA

### Testing

TBA
