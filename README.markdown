[<img src="https://github.com/justinethier/husk-scheme/raw/master/docs/husk-scheme.png" alt="husk-scheme">](http://justinethier.github.com/husk-scheme)

husk is a dialect of Scheme written in Haskell that adheres to the [R<sup>5</sup>RS standard](http://www.schemers.org/Documents/Standards/R5RS/HTML/). Advanced R<sup>5</sup>RS features are provided including continuations, hygienic macros, and a full numeric tower.

husk may be used as either a stand-alone interpreter or as an extension language within a larger Haskell application. By closely following the R<sup>5</sup>RS standard, the intent is to develop a Scheme that is as compatible as possible with other R<sup>5</sup>RS Schemes. husk is mature enough for use in production applications, however it is not optimized for performance-critical applications. 

Scheme is one of two main dialects of Lisp. Scheme follows a minimalist design philosophy: the core language consists of a small number of fundamental forms which may be used to implement other built-in forms. Scheme is an excellent language for writing small, elegant programs, and may also be used to write scripts or embed scripting functionality within a larger application.

Installation
------------
The [Glasgow Haskell Compiler](http://www.haskell.org/ghc/) (GHC) is required to build, install, and run husk. All recent versions of GHC are supported, including 7.0, 7.2, 7.4, and 7.6. The easiest way to get GHC is via the [Haskell Platform](http://hackage.haskell.org/platform/).

husk may be installed using [cabal](http://www.haskell.org/cabal/):

    cabal update
    cabal install husk-scheme

husk has been tested on Windows, Linux, and FreeBSD.

More information is available on the [husk website](http://justinethier.github.com/husk-scheme).

License
-------
Copyright (C) 2010 [Justin Ethier](http://github.com/justinethier)

husk scheme is available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).

The interpreter is based on code from the book [Write Yourself a Scheme in 48 Hours](http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours) written by Jonathan Tang and hosted / maintained by Wikibooks.

