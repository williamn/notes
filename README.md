# README

Notes is an example of Grape app mounted on Rails with `:accept_version_header` versioning strategy.

    curl -H "Accept-Version:v1" htt://localhost:3000/notes
    
will give you

    [{"id":1,"title":"Foo"},{"id":2,"title":"Bar"}]

and

	curl -H "Accept-Version:v2" htt://localhost:3000/notes

will returns

	{"data":[{"id":1,"title":"Foo"},{"id":2,"title":"Bar"}]}
