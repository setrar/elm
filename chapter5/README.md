# ELM in Action

https://www.manning.com/books/elm-in-action


## :a: Create the project

- [ ] Initialize an `elm` project

```
$ elm init
```


## :b: Prepare the project

:round_pushpin: Create the `index.html` file

```html
<!doctype html>
<html>
    <head>
        <link rel="stylesheet" href="http://elm-in-action.com/styles.css">
    </head>
    <body>
        <div id="app"></div>
        <script src="elm.js"></script>
        <script>
            Elm.PhotoGroove.init({node: document.getElementById("app")});
        </script>
    </body>
</html>
```

:round_pushpin: Add few libraries

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

:round_pushpin:  Compile the project

```
$ elm make src/PhotoGroove.elm --output elm.js
```

## :ab: Run the project

```
$ elm reactor
```

test on:

http://localhost:8000

