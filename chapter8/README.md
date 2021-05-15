# ELM in Action

https://www.manning.com/books/elm-in-action


## :a: Create the project

:round_pushpin: Initialize an `elm` project

```
$ elm init
```

:round_pushpin: Add required libraries

- [ ] Add the [`Random`](https://package.elm-lang.org/packages/elm/random/latest/) library

```
$ echo Y | elm install elm/random
```

- [ ] Add the [`Http`](https://package.elm-lang.org/packages/elm/http/latest/) library

```
$ echo Y | elm install elm/http
```

- [ ] Add the [`Json`](https://package.elm-lang.org/packages/elm/json/latest/) library

```
$ echo Y | elm install elm/json 
```

- [ ] Add the [`NoRedInk/elm-json-decode-pipeline`](https://package.elm-lang.org/packages/NoRedInk/elm-json-decode-pipeline/latest) library


```
$ echo Y | elm install NoRedInk/elm-json-decode-pipeline
```

- [ ] Add the [`elm/url`](https://package.elm-lang.org/packages/elm/url/latest/Url) library


```
$ echo Y | elm install NoRedInk/elm-json-decode-pipeline
```

:round_pushpin:  Create and Compile the application

- [ ] Compile the application

```
$ elm make src/Main.elm src/PhotoFolders.elm src/PhotoGroove.elm --output app.js
```

- [ ] Display the application

```html
<html>
    <head>
        <link rel="stylesheet" href="http://elm-in-action.com/styles.css">
    </head>
    <body>
        <div id="app"></div>
        <script src="app.js"></script>
        <script src="http://elm-in-action.com/pasta.js"></script>
        <script>
            Elm.Main.init( { node: document.getElementById("app")} );
        </script>
    </body>
</html>
```


## :ab: Run the project

```
$ elm reactor
```

test on:

http://localhost:8000

## :o: Installing http-server-spa

- [ ] Install the server globally

```
$ npm install http-server-spa --global
```

- [ ] run the server

```
$ http-server-spa .
```

run on:

http://localhost:8080
