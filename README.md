# Notes

Notes is an example of Grape app mounted on Rails.

## API documentation

http://docs.notes32.apiary.io

## Features

### Versioning

Notes using `:accept_version_header` versioning strategy.

    $ curl -H "Accept-Version:v1" http://localhost:3000/notes
    
will give you

    [{"id":1,"title":"Foo"},{"id":2,"title":"Bar"}]

and

    $ curl -H "Accept-Version:v2" http://localhost:3000/notes

will returns

    {"data":[{"id":1,"title":"Foo"},{"id":2,"title":"Bar"}]}

### Error handling

TBA

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
