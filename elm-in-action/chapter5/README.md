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

[WICG/webcomponents](https://github.com/WICG/webcomponents)

```html
<html>
    <head>
        <link rel="stylesheet" href="http://elm-in-action.com/styles.css">
    </head>
    <body>
        <div id="app"></div>
        <script>
            class RangeSlider extends HTMLElement {
                connectedCallBack() {
                    var input = document.createElement("input");
                    this.appendChild(input);
                } 
            }
            window.customElements.define("range-slider", RangeSlider);
        </script>
        <script src="elm.js"></script>
        <script>
            Elm.PhotoGroove.init({node: document.getElementById("app")});
        </script>
    </body>
</html>
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

