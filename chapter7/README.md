# ELM in Action

https://www.manning.com/books/elm-in-action


## :a: Create the project

:round_pushpin: Initialize an `elm` project

```
$ elm init
```

:round_pushpin: Add required libraries

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

:round_pushpin:  Create and Compile the application

- [ ] Compile the application

```
$ elm make src/PhotoFolder.elm --output app.js
```

- [ ] Display the application

```html
<html>
    <head>
    </head>
    <body>
        <div id="app"></div>
        <script src="app.js"></script>
        <script>
            Elm.PhotoFolder.init( { node: document.getElementById("app")} );
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

