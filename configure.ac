# @configure_input@
#

AC_PREREQ([2.69])
MMUX_PKG_VERSIONS([0],[1],[0],[devel.0])
AC_INIT([MMUX Cyclone Pregexp],[MMUX_PACKAGE_VERSION],
  [mrc.mgg@gmail.com],
  [mmux-cyclone-pregexp],[http://github.com/marcomaggi/mmux-cyclone-pregexp])
MMUX_INIT
AC_REVISION([0.1])
AC_COPYRIGHT([Copyright (c) 1999-2015 Dorai Sitaram. All rights reserved.
Modified in 2009, 2010, 2013, 2020 by Marco Maggi <mrc.mgg@gmail.com>

Permission to copy, modify, distribute, and  use this work or a modified
copy of this work, for any purpose, is hereby granted, provided that the
copy includes this copyright notice, and in the case of a modified copy,
also includes  a notice of modification.   This work is provided  as is,
with no warranty of any kind.
])
AC_CONFIG_SRCDIR([lib/])
AC_CONFIG_MACRO_DIR([meta/autotools])
AC_CONFIG_AUX_DIR([meta/autotools])
AC_CANONICAL_BUILD
AC_CANONICAL_HOST
AC_CANONICAL_TARGET
AM_INIT_AUTOMAKE([1.16 foreign subdir-objects])
AM_MAINTAINER_MODE

AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_MKDIR_P


#### basic system inspection

MMUX_CHECK_TARGET_OS
AX_IS_RELEASE([git-directory])

AC_CACHE_SAVE


#### external libraries

MMUX_CYCLONE_SCHEME

AC_CACHE_SAVE


#### finish

AC_CONFIG_FILES([Makefile]
   [build-lib/config.scm:lib/config.scm.in])
MMUX_OUTPUT
AC_OUTPUT

### end of file
