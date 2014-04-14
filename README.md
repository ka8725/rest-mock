# REST mock server

This is a lightweight REST mock server built with Sinatra Ruby framework. The goal of the project is a possibility to start it locally, it is simple
and doesn't require knowledge in Ruby or other programming language and even JavaScript. All that you have to know is to be familiar with JSON format.

## Installation

* Clone this repository to a local folder
* Go to the folder and install dependencies: `bundle install`
* Run the mock server: `ruby server.rb`

The server will be run on the 4567 port on your local machine.

## Usage

To stub a request just create a file with a corresponding HTTP method. For example,
to stub a GET request `api/v1/users` create a `api/v1/get/users.rb` file with Ruby hash which is almost 100% JSON. Let's the response will
contain the following JSON:

```ruby
[
  {
    id: 1,
    name: 'Andrey'
  }
]
```

Now test the request:

```shell
curl localhost:4567/api/v1/users
[{"id":1,"name":"Andrey"}]
```

As you see the usage is very easy.

## The utility status

This repository is created to just an interest if a tool like this is needed by some community. The tool is too raw and can't be used yet for a development process.
If you want some requests, proposes or questions concerning this project feel free to contact with me.
