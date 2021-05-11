# ELM in Action

https://www.manning.com/books/elm-in-action


## :a: Create the project

- [ ] Initialize an `elm` project

```
$ elm init
```

[ :round_pushpin: Chapter5](../chapter5) Follow Chapter 5 Installation


## :b: Prepare the test project


:round_pushpin:  Install the test package

```
$ npm install --save-dev elm-test 
```

## :ab: Run the project

```
$ npx elm-test init
```

:round_pushpin:  Compile the project

```
$ elm make src/PhotoGroove.elm --output app.js
```

## :ab: Run the test

```
$ npx elm-test
```


