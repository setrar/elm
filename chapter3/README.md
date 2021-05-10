# ELM in Action

https://www.manning.com/books/elm-in-action


- [ ] Create an `elm` project

```
$ elm init
```

- [ ] Run the project

```
$ elm reactor
```

- [ ] Compile the project

```
$ elm make src/PhotoGroove.elm --output elm.js
```

- [ ] Create the `index.html` file

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

test on:

http://localhost:8000

- [ ] Add the [`Random`](https://package.elm-lang.org/packages/elm/random/latest/) library

```
$ echo Y | elm install elm/random
```
