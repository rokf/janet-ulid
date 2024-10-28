# janet-ulid

This is a ULID implementation in pure Janet.

## Installation

This library can be installed with:

```sh
jpm install https://github.com/rokf/janet-ulid
```

Alternatively you can put this into your project's dependency tuple:

```janet
{:url "https://github.com/rokf/janet-ulid.git" :tag "main"}
```

## API

The `ulid` module that is part of this library exposes a single function,
called `make`. It returns a ULID in `string` form.

```janet
(import ulid)
(def my-new-id (ulid/make))
```

## Tests

Unit tests can be found in the `test` folder. They've been written with
[judge](https://github.com/ianthehenry/judge). You can install it with:

```sh
jpm install https://github.com/ianthehenry/judge
```

## License

MIT - see the `LICENSE` file for details.
