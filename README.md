Spree Api Auth
============

Spree's Rest API add authentication API.

    $ /api/users/sign_up.json
    $ /api/users/sign_in.json

Example
=======

    $ curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"user":{"email":"camelmasa@gmail.com", "password":"camelmasa", "password_confirmation":"camelmasa"}}' http://localhost:3000/api/users/sign_up.json
    $ curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d ' {"user":{"email":"camelmasa@gmail.com", "password":"camelmasa"}}' http://localhost:3000/api/users/sign_in.json

Testing
-------

Coding now.

Copyright (c) 2012 [name of extension creator], released under the New BSD License
