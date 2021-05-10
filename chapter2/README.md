# ELM in Action

https://www.manning.com/books/elm-in-action


## :a: Create the project

- [ ] Initialize an `elm` project

```
$ elm init
```


## :b: Prepare the project

:bulb: The application source code is called `PhotoGroove`

:round_pushpin: Create the `index.html` file

```html
<!doctype html>
<html>
    <head>
        <style>
           body { background-color: rgb(44, 44, 44); color: white; }
           img { border: 1px solid white; margin: 5px; }
           .large { width: 500px; float: right; }
           .selected { margin: 0; border: 6px solid #60b5cc; }
           .content { margin: 40px auto; width: 960px; }
           #thumbnails { width: 440px; float: left; }
           h1 { font-family: Verdana; color: #60b5cc; }
        </style>
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

