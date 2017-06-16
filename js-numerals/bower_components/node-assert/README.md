**CAUTION**: no plan to support node.js v4.0. and also this project stopped maintaining now, and will end of life at 2015/10. use [browserify](http://browserify.org/) instead.


# assert.js

**LATEST COMPATIBLE VERSION:** [node v0.12.0](https://github.com/joyent/node/blob/v0.12.0-release/lib/assert.js)

assert.js is a port of the Node.js standard assertion library for the browser.
The original code and tests are from Node.js, and have been modified to be browser compatible.

For example, you can use it with [Mocha](http://visionmedia.github.com/mocha/) to perform tests
as isomorphic (both on server and client). Mocha does not supply it's own assertion library.

## run the same tests on both the client-side and server-side

You can use the standard assert module when running mocha on Node.js.

The same tests will run in the browser if you use this library.

## how to use

```sh
$ bower install https://github.com/Jxck/assert
```

```html
<script src="assert.js"></script>
<script src="path/to/testing-framework.js"></script>
<script src="path/to/your/test.js"></script>
```

## running test of this library

### browser

open ```test/index.html``` and ```test/index-amd.html``` in your browser,
and see the console.

## license

MIT (same as Node.js)
