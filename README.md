# expert-systems
A basic expert system, written in Prolog, that suggests what programming language one should learn first.

The system is based on the [this](http://carlcheo.com/wp-content/uploads/2014/12/which-programming-language-should-i-learn-first-infographic.png) infographic.

## Instalation

In order to run this Prolog program you need to have...Prolog installed:

- on Mac:

  ```bash
  brew install swi-prolog
  ```

Then, just clone this repo and you're good to go!

## Running

Start a Prolog console loaded with `main.pl`:

```bash
swipL -f main.pl
?- main
```

Then follow the on-screen instructions. Enjoy!


# Recommender of course of programming languages
Functors equivalence:

| WPLL           | Advisor           |
| -------------- | ----------------- |
| language       | course            |
| find_language  | find_course       |
| describe       | course_description|
| question       | =                 |
| answer         | =                 |
| answers        | =                 |
| parse          | =                 |
| ask            | =                 |