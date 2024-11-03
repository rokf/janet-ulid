# janet-ulid

This is a [ULID](https://github.com/ulid/spec) implementation in pure Janet. [ulid.lua](https://github.com/Tieske/ulid.lua) was used as a reference. It uses [os/cryptorand](https://janet-lang.org/api/index.html#os/cryptorand) as a source of randomness.

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

The `ulid` module that is part of this library exposes a single function, called `make`. It returns a ULID in `string` form.

```janet
(import ulid)
(def my-new-id (ulid/make))
```

## License

MIT - see the `LICENSE` file for details.
