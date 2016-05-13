this is my website. it is powered by node.js, but mainly brainfuck. how can you write a website
using brainfuck, you ask? well, there's two parts to it:

#### the server

the server lives in `server.js`. its a basic node.js tcp server that does nothing but listen for
requests. upon a request, it loads and interprets the brainfuck code from `server.bf` and serves
that as a http response.

#### the http response

this is the main part of the site. it lives in `server.bf`. all it does it construct a http reponse
based on the first line of the request (usually looks like `GET /something`). if it's not GET or
if it doesn't point to `/`, it constructs a 404 response. if everything is ok, though, it returns
`200 OK` with the site's html content.

i had to keep the html minimal because otherwise it would've been an absolute nightmare to implement
it in brainfuck (honestly, even now it is).

#### license

licensed under the MIT license. do whatever you want with it, just credit this. see `LICENSE`.