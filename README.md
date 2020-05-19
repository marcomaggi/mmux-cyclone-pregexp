# MMUX Cyclone Pregexp

## Introduction

This package installs libraries for  the Cyclone language; it implements
regular expressions.   Cyclone is a Scheme-to-C  compiler supporting the
language features as defined in the ``Revised^7 Report on Scheme''.

This distribution is  a repackaging of Dorai  Sitaram's Pregexp library.
Pregexp is  a portable  implementation of regular  expressions (regexps)
that  runs  in  any  R5RS  or  R4RS  compliant  implementations  of  the
programming language  Scheme, and in  Common Lisp.  The  regexp notation
supported  is  compatible  with   Perl's,  and  includes  such  powerful
directives as:

* Numeric quantifiers.

* Non-greedy quantifiers.

* POSIX character classes.

* Non-capturing clusters (in addition to the usual capturing kind).

* Selective (i.e., per-cluster) case-insensitivity.

* Selective space-insensitivity (with provision for comments).

* Backreferences.

* Alternation.

* Backtrack pruning.

* Lookahead (positive and negative).

* Lookbehind (positive and negative).

This is in addition to the  more basic directives familiar to all regexp
users.

The package targets  POSIX systems.  To run the test  suite this package
depends upon the external package: MMUX Cyclone Checks.

The package uses the GNU Autotools and it is tested, using Travis CI, on
both Ubuntu GNU+Linux systems and OS X systems.

This package  should work  with Cyclone  version 0.17.

## License

Copyright (c) 1999-2005 Dorai Sitaram. All rights reserved.
Modified in 2009, 2010, 2013, 2020 by Marco Maggi `mrc.mgg@gmail.com`

Permission to copy, modify, distribute, and  use this work or a modified
copy of this work, for any purpose, is hereby granted, provided that the
copy includes this copyright notice, and in the case of a modified copy,
also includes  a notice of modification.   This work is provided  as is,
with no warranty of any kind.

## Install

To install from a proper release tarball, do this:

```
$ cd mmux-cyclone-pregexp-0.1.0
$ mkdir build
$ cd build
$ ../configure
$ make
$ make check
$ make install
```

to inspect the available configuration options:

```
$ ../configure --help
```

The Makefile is designed to allow parallel builds, so we can do:

```
$ make -j4 all && make -j4 check
```

which,  on  a  4-core  CPU,   should  speed  up  building  and  checking
significantly.

The Makefile supports the DESTDIR  environment variable to install files
in a temporary location, example: to see what will happen:

```
$ make -n install DESTDIR=/tmp/mmux-cyclone-pregexp
```

to really do it:

```
$ make install DESTDIR=/tmp/mmux-cyclone-pregexp
```

After the  installation it is  possible to verify the  installed library
against the test suite with:

```
$ make installcheck
```

From a repository checkout or snapshot  (the ones from the Github site):
we  must install  the GNU  Autotools  (GNU Automake,  GNU Autoconf,  GNU
Libtool), then  we must first run  the script `autogen.sh` from  the top
source directory, to generate the needed files:

```
$ cd mmux-cyclone-pregexp
$ sh autogen.sh

```

After this  the procedure  is the same  as the one  for building  from a
proper release tarball, but we have to enable maintainer mode:

```
$ ../configure --enable-maintainer-mode [options]
$ make
$ make check
$ make install
```

When compiling the environment  variable `CYCLONE_FLAGS` is available to
hand options to the compiler:

```
$ make CYCLONE_FLAGS='-O3'
```

Shared libraries will be installed under `$(libdir)/cyclone`.

## Usage

Read the documentation generated from  the Texinfo sources.  The package
installs the documentation  in Info format; we can  generate and install
documentation in HTML format by running:

```
$ make html
$ make install-html
```

## Credits

The  stuff  was written  by  Marco  Maggi reorganising  and  repackaging
Pregexp,  a  regular expressions  library  by  Dorai Sitaram.   If  this
package exists it's because of the great GNU software tools that he uses
all the time.  Cyclone is an original creation of Justin Ethier.

## Bugs, vulnerabilities and contributions

Bug  and vulnerability  reports are  appreciated, all  the vulnerability
reports  are  public; register  them  using  the  Issue Tracker  at  the
project's GitHub  site.  For  contributions and  patches please  use the
Pull Requests feature at the project's GitHub site.

## Resources

The latest release of this package can be downloaded from:

[https://bitbucket.org/marcomaggi/mmux-cyclone-pregexp/downloads](https://bitbucket.org/marcomaggi/mmux-cyclone-pregexp/downloads)

development takes place at:

[http://github.com/marcomaggi/mmux-cyclone-pregexp/](http://github.com/marcomaggi/mmux-cyclone-pregexp/)

and as backup at:

[https://bitbucket.org/marcomaggi/mmux-cyclone-pregexp/](https://bitbucket.org/marcomaggi/mmux-cyclone-pregexp/)

the documentation is available online:

[http://marcomaggi.github.io/docs/mmux-cyclone-pregexp.html](http://marcomaggi.github.io/docs/mmux-cyclone-pregexp.html)

the GNU Project software can be found here:

[http://www.gnu.org/](http://www.gnu.org/)

we can download Cyclone from:

[https://github.com/justinethier/cyclone](https://github.com/justinethier/cyclone)

The original code is available at (last checked May 16, 2020):

[https://github.com/ds26gte/pregexp](https://github.com/ds26gte/pregexp)

The package MMUX Cyclone Checks is available from:

[https://github.com/marcomaggi/mmux-cyclone-checks/](https://github.com/marcomaggi/mmux-cyclone-checks/)

